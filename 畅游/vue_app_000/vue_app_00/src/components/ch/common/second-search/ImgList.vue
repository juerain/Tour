<template>
    
    <!-- 搜索面板图像列表子组件 -->
    <div class="imgs_list">
        <div class="search_img">
            <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt="">
            <!-- <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt="">
            <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt="">
            <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt="">
            <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt=""> -->
        </div>
        <div class="search_img" id="shop" style="display:none">
            <img v-for="(item,i) of imglist" :key="i" :src="'http://127.0.0.1:3000/'+item.imgsrc" alt="">
            
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return{
            imglist:[]
        }
    },
    // 接收父组件传来的数据
    props:{
        imgs:{default:""}
    },
    methods: {
        load(){
            this.axios("cy").then(res=>{
                // console.log(res);
                this.imglist=res.data;
                
            });
        },
        change(e){
            var shop=document.getElementById("shop");
            var search=document.getElementById("search");

            if(e.target==shop){
                shop.style.display="block";
                search.style.display="none";
            }
        }
    },
    created() {
        this.load();
    },
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
        height: 100px;
        margin-left: 2px;
    }
</style>
