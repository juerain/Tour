//vue_server_00/app.js  node 程序
//1.加载第三方模块
//服务器
const express = require("express");
//mysql驱动
const mysql = require("mysql");
//跨域
const cors = require("cors");
//session
const session = require("express-session");
//2.配置数据库连接池：提高数据效率
var pool =mysql.createPool({
    host:"127.0.0.1",//数据库地址
    user:"root",//数据库用户名
    password:"",//数据库密码
    port:3306,//数据库端口
    database:"cy",//数据库名称
    connectionLimit:15//连接数量
});

var server=express();
//3.配置跨域模块
server.use(cors({
    //允许跨域访问程序地址列表
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true//请求验证
}))

//4.配置seesion模块
server.use(session({
    secret:"128为字符串",//安全字符串进行加密
    resave:true,         //每次请求都更新数据
    saveUninitialized:true//保存初始数据
}))
//4.1配置项目的静态目录
server.use(express.static("public"));

server.listen(3000);


// 1.登录
server.get("/login",(req,res)=>{
    // 获取用户名
    var phone=req.query.phone;
    // 获取密码
    var upwd=req.query.upwd;
    // 创建sql语句
    var sql="SELECT uid FROM cy_user WHERE uphone=? AND upwd=md5(?)";
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            console.log(result);
            res.send({code:-1,msg:"用户名密码有误"});  
        }else{
            //登录成功
            //1.将登录成功凭据保存session
            //result=[{id:1}]
            req.session.uid=result[0].id;
            // console.log(req.session);
            //2.将成功消息发送脚手架
            res.send({code:1,msg:"登录成功"})
        }
    })
})

// 2.注册
server.get("/regist",(req,res)=>{
    // 创建变量res保存返回的总结果
    // var result={
    //     find:{},
    //     reg:{}
    // };
    // 获取用户名
    var phone=req.query.phone;
    // 获取邮箱
    var email=req.query.email;
    // 获取用户密码
    // var upwd=req.query.upwd;
    // 查询是否有相同的手机号或邮箱
    // 创建sql语句
    var sql1;
    var msg1
    if((phone==="")==false){
        msg1=email;
        sql1="SELECT id FROM cy_user WHERE email=?";
    }
    if((email==="")==false){
        msg1=phone;
        sql1="SELECT id FROM cy_user WHERE phone=?";
    }
    pool.query(sql1,[msg1],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            result.find={code:-1,"msg":"邮箱或手机已经被注册"}
            console.log(result.find)
        
            
         }
        
    });
    
});



// 搜索页图片
server.get("/cy",(req,res)=>{
    // 创建sql语句
    var results={
        result1:[],
        result2:[],//获取所有推荐用户信息数组
    };
    var sql="SELECT * FROM user_img";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        results.result1=result;
        
        console.log(result);

        // 数据库获取用户的名字和头像照片地址
        var sql="SELECT uid,uname,uheadurl,uattention FROM cy_user";
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            results.result2=result;
            // console.log(result)

            //返回results
            res.send({code:1,data:results});
        })
    });
})


//贾







// 陶