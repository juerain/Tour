<template>
    <!-- 搜索面板图像列表子组件 -->
    <div class="imgs_list">
        <div class="search_img">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
            <img :src="imgs" alt="">
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return{}
    },
    // 接收父组件传来的数据
    props:{
        imgs:{default:""}
    }
}
</script>

<style scoped>
    /* 外层容器样式 */
    div.search_img{
        width: 100%;
    }
    /* 图片样式 */
    div.search_img img{
        width: 117px;
        margin: 1px;
    }
</style>
