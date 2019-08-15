<template>
    <div id="suggestlistallmsg-2">
        <div class="suggestlistallmsg-2-nav">
            <div class="suggestlistallmsg-2-nav-1" >
                <span >{{suggest1}}</span>
            </div>
            <div class="suggestlistallmsg-2-nav-2" @click="liaison2">
                <span class="span-suggestlist-3">{{suggest2}}</span>
            </div>
        </div>
        <div id="addresslist">
            <img class="addresslistimg" :src="addresslistimg" />
            <div id="addresslist-h5">
                <h4>{{suggest3}}</h4>
                <h5>{{suggest4}}</h5>
            </div>
            <a href="javascript:;" class="addresslista" @click="connection">{{suggest5}}</a>
        </div>
        <div id="allsuggestlist">
            <h4>所有推荐</h4>
            <div id="suggest-msg-1" v-for="(item,i) of list" :key="i">
                <img class="suggestdel-1" :src="suggestdelicon" />
                <img class="msgimg-1" :src="'http://127.0.0.1:3000/img/'+item.img_url" />
                <span class="msgname-1">{{item.lname}}</span>
                <!-- <a class="suggest-a" href="javascript:;" 
                :data-id="item.lid" 
                :data-attention="item.attention" 
                @click="attentions" >{{attentiontext}}</a> -->
                <a class="suggest-a-1" @click="attentions(i)">
                    <span v-if="item.attention">已关注</span>
                    <span v-else>关注</span>
                </a>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            suggest1:"推荐",
            suggest2:"联系人",
            suggest3:"绑定通讯录",
            suggest4:"关注认识的用户",
            suggest5:"绑定",
            list:[]// 创建一个空数组，接收后台传回的所需用户的数据
        }
    },
    methods: {
        loadmore(){
            // 请求服务器网址
            var url="cy";
            // 发送ajax请求获取数据
            this.axios.get(url).then(result=>{
                var list=result.data.data;
                this.list=list;
            })
        },
        attentions(index){//判断是否已关注
            this.list[index].attention = !this.list[index].attention
        }
    },
    props:{
        addresslistimg:{default:""},//通讯录图
        suggestdelicon:{default:""},//删除图
        liaison2:{type:Function},//联系人点击事件
        connection:{type:Function}
    },
    // 加载页面
    created(){
        this.loadmore();
    }
}
</script>

<style>
    #suggestlistallmsg-2{
        float: left;
        /* opacity: .2; */
    }
    .suggestlistallmsg-2-nav{
        position: relative;
    }
    .suggestlistallmsg-2-nav-1,.suggestlistallmsg-2-nav-2{
        width:180px;
        height:50px;
        text-align: center;
        line-height: 50px;
        font-size: 16px;
        font-weight: 700;
        background: #f3f1f1;
    }
    .suggestlistallmsg-2-nav-1{
        position: absolute;
        border-bottom: 1px solid #000;
    }
    .suggestlistallmsg-2-nav-2{
        position: absolute;
        left:180px;
    }
    h5,h4{
        width:200px;
        margin: 1px 0;
    }
    #addresslist{
        position: relative;
        border-bottom: 1px solid #0000003d;
        width:359px;
        height:65px;
        top:60px;
    }
    #addresslist-h5{
        position: absolute;
        width:30px;
        top:10px;
        left: 70px;;
    }
    .addresslistimg{
        position: absolute;
        top:13px;
        left: 24px;;
    }
    .addresslista{
        position: absolute;
        top:16px;
        left:260px;
        width:80px;
        height:30px;
        font-size: 16px;
        line-height: 30px;
        text-align: center;
        color: #fff;
        background:#038fff;
        border-radius: 3px;
    }
    #allsuggestlist{
        position: relative;
        top:60px;
        padding:10px;
    }
    /* 推荐网友信息 */
    #suggest-msg-1{
        position: relative;/*相对定位*/
        width:100%;
        height:80px;
        background: #fff;
        margin-top:15px;
        margin-bottom:10px;
        border-radius: 5px;
        border: 1px solid #0000003d;
    }
    /* 用户头像 */
    .msgimg-1{
        position: absolute;/*绝对定位*/
        top:10px;
        left:10px;;
        width:60px;
        height:60px;
        border-radius: 50%;/*画圆*/

    }
    /* 关注按钮样式 */
    .suggest-a-1{
        position: absolute;/*绝对定位*/
        top:25px;
        left:242px;
        width:55px;
        height:30px;
        border-radius: 3px;/*圆角*/
        background: #038fff;/*背景色*/
        text-align: center;/*文字水平居中*/
        font-size: 16px;/*字体大小*/
        line-height: 30px;/*行高*/
        color:#fff;/*字体颜色*/
    }
    /* 用户姓名 */
    .msgname-1{
        position: absolute;
        top:24px;
        left:70px;
        width:95px;;
        height:32px;
        padding: 2px;
        overflow: hidden;
        font-size: 12px;
    }
    /* 删除图片 */
    .suggestdel-1{
        position: absolute;
        top:6px;
        right:6px;
        width:16px;
        height:16px;
    }
</style>