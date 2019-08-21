<template>
    <div id="tvvideo-2">
        <div v-for="(item,i) of list" :key="i">
            <img class="tvvideo2-img" :src="'http://127.0.0.1:3000/' +item.uimgurl" alt="" />
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            list:[],
        }
    },
    methods: {
        loadmore(){
            // 获取地址栏上的传参值obj
            var obj=this.$route.params;
            // console.log(obj);
            //请求服务器网址
            var url="tvvideo2";
            //发送ajax请求获取数据
            this.axios.get(url,{params:obj}).then(result=>{
                var list=result.data.data;
                this.list=list;
                console.log(list);
            })
           
        },
       
    }, 
    created(){//页面加载自动执行loadmore()
            this.loadmore();
    },
}
</script>

<style>
    .tvvideo2-img{
        width:100%;
        height:653px;
    }
</style>

