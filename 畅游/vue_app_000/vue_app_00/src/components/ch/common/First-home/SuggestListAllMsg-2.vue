<template>
    <div id="suggestlistallmsg-2">
        <div class="suggestlistallmsg-2-nav">
            <div class="suggestlistallmsg-2-nav-1">
                <span>{{suggest1}}</span>
            </div>
            <div class="suggestlistallmsg-2-nav-2">
                <span>{{suggest2}}</span>
            </div>
        </div>
        <div id="addresslist">
            <img class="addresslistimg" :src="addresslistimg" />
            <div id="addresslist-h5">
                <h4>{{suggest3}}</h4>
                <h5>{{suggest4}}</h5>
            </div>
            <a href="javascript:;" class="addresslista">{{suggest5}}</a>
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
            suggest5:"绑定"
        }
    },
    props:{
        addresslistimg:{default:""},//通讯录图
    }
}
</script>

<style>
    .suggestlistallmsg-2-nav{
        display: flex;
    }
    .suggestlistallmsg-2-nav-1,.suggestlistallmsg-2-nav-2{
        width:50%;
        height:50px;
        text-align: center;
        line-height: 50px;
        font-size: 16px;
        font-weight: 700;
        border-bottom: 1px solid #000;
        background: #f3f1f1;
    }
    h5,h4{
        margin: 1px 0;
    }
    #addresslist{
        position: relative;
        border-bottom: 1px solid #000;
        height:65px;
    }
    #addresslist-h5{
        position: absolute;
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
        background:#2c76d9;
        border-radius: 3px;
    }
</style>