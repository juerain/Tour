<template>
    <div id="suggestlistallmsg-1">
        <div id="suggestlistallmsg-1-nav">
            <img class="suggestlistallmsg-1-img" :src="suggestlistallmsgquit" @click="suggestquit"/>
            <span class="suggestlistallmsg-1-span">发现用户</span>
        </div>
        <div id="suggestlistallmsg-1-msg">
            <suggestlistallmsg2
            
            ></suggestlistallmsg2>
        </div>
    </div>
</template>

<script>
// 引入子组件
import SuggestListAllMsg2 from "./SuggestListAllMsg-2"

export default {
    props:{
        suggestlistallmsgquit:{default:""},//退出界面图
        suggestquit:{type:Function}
    },
    methods: {
        
    },
    //注册子组件并且给子组起一个名字
    components:{
        // "字符串"：子组件对象名称
        "suggestlistallmsg2":SuggestListAllMsg2//推荐网友主列表信息组件
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