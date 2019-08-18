<template>
    <div @click="point">
        <div class="pop-up-box" style="display:none">
            <div class="pop-up">
                <p>举报...</p>
                <p>减少这类帖子</p>
                <p>复制链接...</p>
                <p>分享链接...</p>
            </div>
        </div>
        <div>
            <div class="title_box">
                <img @click="arrows"  src="../../../../assets/arrows.png" alt="" class="arrows">
                <h3 class="title">发现</h3>
            </div>
        <div class="detaile" v-for="(item,i) of userlist" :key="i">
            <div class="head_box">
                <div class="head">
                    <img class="head" :src="'http://127.0.0.1:3000/'+item.uheadurl" alt="">
                    <div class="user_div">
                        <span class="user">{{item.uname}} ·<span class="reccommend">关注</span></span>
                        <span class="address">{{item.uaddress}}</span>
                    </div>
                </div>
                
                <img class="point" src="../../../../assets/point.png" alt="">
                
            </div>
            <img class="photo" :src="'http://127.0.0.1:3000/'+item.uimgurl" alt="">
            <div class="love">
                <div style="display:inline"  @click="change" >
                    <img data-did1="item.did" id="praise" src="../../../../assets/praise.png" alt="">
                    <img data-did2="item.did" style="display:none" src="../../../../assets/praised.png" alt="" id="praised">
                </div>
                <img src="../../../../assets/discuss.png" alt="">
                <img src="../../../../assets/plain.png" alt="" style="height:30px;">
                <img src="../../../../assets/label.png" class="label" id="label_normal">
                <img style="display:none;" src="../../../../assets/label2.png" alt="" class="label" id="label_selected">
            </div>
            <p class="praise"><span>{{item.uattents}}次赞</span>
            </p>
            <p><span class="user">{{item.uname}}</span> jidnfdffdijfjspa <span>更多</span></p>
            <p class="similar">2天前·你赞过相似的照片</p>
        </div>
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return{
            userlist:[],
        }
    },
    props:["uid","umid","i"],
    methods: {
        point(e){
            var point=document.getElementsByClassName("point")[0];
            var pop=document.getElementsByClassName("pop-up-box")[0];
                console.log(pop);
            if(e.target==point){
                console.log(1);
                pop.style.display="";
            }
        },
        change(e){
            var imgpraise=document.getElementById("praise");
            var imgpraised=document.getElementById("praised");
            if(e.target==imgpraise){
                imgpraise.style.display="none";
                imgpraised.style.display="inline-block";
            }
            
            console.log(imgpraise);
            
        },
        // 请求数据
        load(){
            var obj={uid:this.uid}
            this.axios("detailes",{params:obj}).then(res => {
            console.log(this.umid);
            console.log(res.data);
            this.userlist = res.data.slice(this.i);
      });
        },
        arrows(){
            if(this.uid==1){
            this.$router.push(`/shop`);
            }else if(this.uid==0){
            this.$router.push(`/food`);
            }
            else if(this.uid==3){
            this.$router.push(`/build`);
            }
            else if(this.uid==2){
            this.$router.push(`/houseandhome`);
            }
            else if(this.uid==4){
            this.$router.push(`/tour`);
            }
        },
    },
    created() {
        this.load();
    },
}
</script>

<style scoped>
    p{
        margin: 5px;
    }
    .head_box{
        display: flex;
        justify-content: space-between;
        position: relative;
    }
    .head{
        display: flex;
        align-items: center;
    }
    /* 顶部标题 */
    div.title_box{
        display: flex;
        justify-content: flex-start;
        background: #eee;
    }
    /* 箭头 */
    .arrows{
        width: 30px;
        height: 30px;
    }
    /* 下部内容容器 */
    .detaile{
        margin-top: 20px;
    }
    /* 标题 */
    .title{
        font-size: 20px;
        margin: 7px 0px 0px 20px;
    }
    /* 用户头像div */
    div.user_div{
        display: flex;
        flex-direction: column;
        margin-left: 10px;
    }
    /* 用户头像 */
    .head>img.head{
        width: 40px;
        height: 40px;
        border-radius: 40px;
    }
    /* 用户名 */
    .user{
        color: #333;
    }
    /* 关注 */
    .reccommend{
        color: #1296db;
        padding-left: 5px;
    }
    /* 地址 */
    .address{
        padding-right: 55px;;
    }
    /* 右侧点 */
    .point{
        float: right ;
        width: 20px;
        height: 20px;
        padding-top: 10px;
    }
    /* 弹窗 */
    .pop-up-box{
        position: absolute;
        z-index: 1;
        width: 360px;
        height: 660px;
        background: rgb(0, 0, 0,0.4);
    }
    .pop-up{
        position: absolute;
        z-index: 2;
        width: 130px;
        height: 180px;
        background: #fff;
        top: 220px;
        left: 100px;
        display: flex;
        flex-direction: column;
        padding-top: 30px;
        padding-left: 20px;
    }
    /* 照片样式 */
    .photo{
        width: 100%;
        height: 250px;
    }
    /* 照片下部样式 */
    div.love img{
        width: 30px;
        margin-left: 10px;
    }
    /* 标签样式 */
    .label{
        float: right;
    }
    /* 点赞样式 */
    .praise,.user{
        font-weight: bolder;
    }
    /* 用户名 */
    p.user{
        margin: 0px;
    }
    /* 相似照片 */
    .similar{
        color: #666;
        font-size: 14px;
    }
    .similar>span{
        color: black;
        font-weight: bolder;
    }
</style>
