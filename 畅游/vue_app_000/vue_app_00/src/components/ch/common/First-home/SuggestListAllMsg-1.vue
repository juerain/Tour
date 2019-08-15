<template>
    <div id="suggestlistallmsg-1">
        <div id="suggestlistallmsg-1-nav">
            <img class="suggestlistallmsg-1-img" :src="suggestlistallmsgquit" @click="suggestquit"/>
            <span class="suggestlistallmsg-1-span">{{suggesttext}}</span>
        </div>
        <div id="suggestlistallmsg-1-msg">
            <suggestlistallmsg2
            :addresslistimg="require('../../../../img/addresslist-icon.png')"
            :suggestdelicon="require('../../../../img/suggest-del-icon.png')"
            :liaison2="liaison2"
            v-show="showhide2"
            ></suggestlistallmsg2>
            <suggestlistallmsg3
            :addresslistimg1="require('../../../../img/addresslist1-icon.png')"
            :liaison3="liaison3"
            v-show="showhide3"
            ></suggestlistallmsg3>
        </div>
    </div>
</template>

<script>
// 引入子组件
import SuggestListAllMsg2 from "./SuggestListAllMsg-2"
import SuggestListAllMsg3 from "./SuggestListAllMsg-3"

export default {
    data(){
        return{
            suggesttext:"发现用户",
            showhide2:true,
            showhide3:false
        }
    },
    props:{
        suggestlistallmsgquit:{default:""},//退出界面图
        suggestquit:{type:Function}//退出界面按钮
    },
    methods: {
        liaison2(){//联系人点击事件
            this.showhide2=!this.showhide2;//推荐事件页面隐藏
            this.showhide3=!this.showhide3;//联系人页面显示
        },
        liaison3(){//推荐点击事件
            this.showhide3=!this.showhide3;//推荐页面显示
            this.showhide2=!this.showhide2;//联系人页面隐藏
        }
    },
    //注册子组件并且给子组起一个名字
    components:{
        // "字符串"：子组件对象名称
        "suggestlistallmsg2":SuggestListAllMsg2,//推荐网友主列表信息组件
        "suggestlistallmsg3":SuggestListAllMsg3//绑定联系人组件
    }
}
</script>

<style>
    #suggestlistallmsg-1-nav{
        position: relative;
        height:60px;
        background: #f3f1f1;
    }
    .suggestlistallmsg-1-img{
        position: absolute;
        width: 32px;
        height:32px;
        top:14px;
        left:5px;
        z-index: 1;
    }
    .suggestlistallmsg-1-span{
        position: absolute;
        left:140px;
        font-size:22px;
        font-weight: 600;
        line-height: 60px;

    }
</style>