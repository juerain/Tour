<template>
    <div id="connectionaddress1">
        <div id="connectionaddress1text">
            <span class="">无法加载用户</span>
            <span class="">请进“设置”>“隐私”>“联系人”，允许 Instagram 访问你的联系人</span>
            <a href="javascript:;">取消</a>
            <a href="javascript:;">设置</a>
        </div>
    </div>
</template>

<script>
export default {
    props:{

    }
}
</script>

<style>
    /* 背景大小 */
    #connectionaddress1{
        position: relative;
        top:20px;
        width:375px;
        height:667px;
    }
    #connectionaddress1text{
        position: absolute;
        top:128px;
        left:53px;
        z-index: 999;
        background: #fff;
        width:251px;
        height:315px;
        border-radius: 15px;
        border:1px solid #00000059;
    }
</style>