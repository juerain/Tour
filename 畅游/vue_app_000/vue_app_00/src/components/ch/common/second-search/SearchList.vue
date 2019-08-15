<template>
    <!-- 搜索用户父组件 -->
    <div>
        <searchlisttitlebar
        :upImg="require('../../../../assets/arrows.png')"
        upTitle="搜索"
        downHotSearch="热门搜索"
        downAccount="账户"
        downLable="标签"
        downPlace="地点"
        ></searchlisttitlebar>
        <reccommendlist
        :userListImg="require('../../../../assets/1.jpg')"
        user="用户名"
        nickname="用户昵称"
        ></reccommendlist>
    </div>
</template>

<script>
// 引入SearchListTitleBar.vue 子组件
import searchlisttitlebar from "./SearchListTitleBar.vue"
// 引入ReccommendList.vue 子组件
import reccommendlist from "./ReccommendList.vue"
export default {
    // 注册子组件
    components:{
        "searchlisttitlebar":searchlisttitlebar,
        "reccommendlist":reccommendlist,
    }
}
</script>

<style scoped>

</style>
