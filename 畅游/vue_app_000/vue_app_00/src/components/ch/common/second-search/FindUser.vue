<template>
    <div>
        <!-- 查找用户父组件 -->
        <finduserbar
        :upImg="require('../../../../assets/arrows.png')"
        upTitle="查找用户"
        downLeftTitle="推荐"
        downRightTitle="联系人"
        ></finduserbar>
        <finduserlist
        :userListImg="require('../../../../assets/1.jpg')"
        userListTitle="关联"
        attentionFiend="关注好友"
        bind="绑定"
        ></finduserlist>
    </div>
</template>

<script>
// 引入FindUserTitleBar.vue 子组件
import finduserbar from "./FindUserTitleBar.vue"
// 引入FindUserList.vue 子组件
import finduserlist from "./FindUserList.vue"
export default {
    // 注册子组件
    components:{
        "finduserbar":finduserbar,
        "finduserlist":finduserlist,
    }
}
</script>

<style scoped>

</style>
