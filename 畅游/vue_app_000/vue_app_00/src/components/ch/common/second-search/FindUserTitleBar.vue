<template>
        <!-- 查找用户顶部导航栏子组件 -->
        <div class="find_user_head">
            <div class="up_head" @click="arrows">
                <!-- 左侧图片与文字 -->
                <img :src="upImg" id="img">
                <h2>{{upTitle}}</h2>
            </div>
            <div class="down_head">
                <!-- 右侧图片与文字 -->
                <span>{{downLeftTitle}}</span>
                <span>{{downRightTitle}}</span>
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
        upImg:{default:""},
        upTitle:{default:""},
        downLeftTitle:{default:""},
        downRightTitle:{default:""}
    },
    methods: {
        arrows(e){
            var img=document.getElementById("img");
            if(e.target==img){
                this.$router.push("shop");
            }
        }
    },
}
</script>

<style scoped>
    /* 外层容器样式 */
    div.find_user_head{
        width: 100%;
        height: 100px;
        background: #eee;
    }
    /* 上部标题样式 */
    div.up_head{
        width: 100%;
        height: 50px;
        display: flex;
        align-items: center;
    }
    /* 下面标题样式 */
    div.down_head{
        width: 100%;
        height: 50px;
        align-items: center;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }
    /* 箭头 */
    div.up_head img{
        width: 30px;
        margin-right: 30px;
    }
    /* 下面标题样式 */
    div.down_head span{
        font-size: 20px;
        color: #ccc;
        font-weight: bolder;
    }

</style>
