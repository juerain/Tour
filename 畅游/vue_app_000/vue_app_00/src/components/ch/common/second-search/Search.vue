<template>
    <div>
        <!-- 顶部标题栏 -->
        <searchtitlebar
        :leftImg="require('../../../../assets/search_normal.png')"
        leftTitle="搜索"
        rightTitle="+"
        :rightImg="require('../../../../assets/me_normal.png')"
        ></searchtitlebar>
        <imglist
        :imgs="require('../../../../assets/1.jpg')"
        ></imglist>
    </div>
</template>

<script>
// 搜索顶部子组件
import searchtitlebar from "./SearchTitleBar.vue"
import imglist from "./ImgList.vue"
export default {
    data(){
        return{}
    },
    components:{
        "searchtitlebar":searchtitlebar,
        "imglist":imglist,
    },
    
}
</script>

<style>

</style>
