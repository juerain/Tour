<template>
    <div>
        <div>
            <div class="title_box">
            <img @click="arrows"  src="../../../../assets/arrows.png" alt="" class="arrows">
            <h3 class="title">发现</h3>
        </div>
        <div class="detaile" v-for="(item,i) of userlist" :key="i">
            <div class="head">
                <img class="head" :src="'http://127.0.0.1:3000/'+item.uheadurl" alt="">
                <div class="user_div">
                    <span>{{item.uname}}·</span><span>关注</span>
                    <span>{{item.uaddress}}</span>
                </div>
                
                <img class="point" src="../../../../assets/point.png" alt="">
            </div>
            <img class="photo" :src="'http://127.0.0.1:3000/'+item.uimgurl" alt="">
            <div class="love" @click="change">
                <img id="praise" src="../../../../assets/praise.png" alt="">
                <img id="praised" style="display:none" src="../../../../assets/praised.png" alt="">
                <img src="../../../../assets/discuss.png" alt="">
                <img src="../../../../assets/plain.png" alt="" style="height:30px;">
                <img src="../../../../assets/label.png" class="label" id="label_normal">
                <img style="display:none;" src="../../../../assets/label2.png" alt="" class="label" id="label_selected">
            </div>
            <p class="praise"><span>{{item.uattents}}次赞</span>
            </p>
            <p><span class="user">{{item.uname}}</span> jidnfdffdijfjspa <span>更多</span></p>
            <p class="similar">2天前·你赞过相似的照片·<span>查看翻译</span></p>
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
    props:["uid","umid"],
    methods: {
        
        // 请求数据
        load(){
            var obj={uid:this.uid}
            this.axios("detailes",{params:obj}).then(res => {
            console.log(this.umid);
            console.log(res.data);
            this.userlist = res.data.slice(this.umid-10);

            // console.log(this.userlist);
      });
        },
        arrows(){
            this.$router.push("/shop");
        },
        change(e){
            var label1=document.getElementById("label_normal");
            var label2=document.getElementById("label_selected");
            if(e.target==label1){
                label1.style.display="none";
                label2.style.display="inline-block";
            }else{
                label1.style.display="inline-block";
                label2.style.display="none";
            }
            var praise=document.getElementById("praise");
            var praised=document.getElementById("praised");
            if(e.target==praise){
                praise.style.display="none";
                praised.style.display="inline-block";
            }else{
                praise.style.display="inline-block";
                praised.style.display="none";
            }
        }
    },
    created() {
        this.load();
    },
}
</script>

<style scoped>
    /* 顶部标题 */
    div.title_box{
        display: flex;
        justify-content: flex-start;
        background: #eee;
    }
    /* 箭头 */
    .arrows{
        width: 40px;
        height: 40px;
    }
    /* 标题 */
    .title{
        font-size: 20px;
        margin: 7px 0px 0px 20px;
    }
    /* 用户头像div */
    div.user_div{
        display: inline-flex;
        align-items: center;
    }
    /* 用户头像 */
    .head>img.head{
        width: 40px;
        height: 40px;
        border-radius: 40px;
    }
    /* 右侧点 */
    .point{
        float: right ;
        width: 20px;
        height: 20px;
        margin-top: 12px;
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
