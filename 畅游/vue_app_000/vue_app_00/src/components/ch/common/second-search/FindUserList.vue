<template>
    <!-- 查找用户列表子组件 -->
    <div>
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{userListTitle}}</h3>
                <span>{{attentionFiend}}</span>
            </div>
            <mt-button class="btn">{{bind}}</mt-button>
        </div>
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{userListTitle}}</h3>
                <span>{{attentionFiend}}</span>
            </div>
            <mt-button class="btn">{{bind}}</mt-button>
        </div>
        <hr>
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{userListTitle}}
                    <img :src="userListImg" alt="" style="width:20px; height:20px;">
                </h3>
                
                <span>{{attentionFiend}}</span>
                <span>{{attentionFiend}}</span>
                
            </div>
            <mt-button class="btn">{{bind}}</mt-button>
            <span>×</span>
        </div>
    </div>
    
</template>

<script>
export default {
    // 接收父组件传来的数据
    props:{
        userListImg:{default:""},
        userListTitle:{default:""},
        attentionFiend:{default:""},
        bind:{default:""},
    }
}
</script>

<style scoped>
    /* 外层容器样式 */
    div.find_user_list{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    /* 内层容器样式 */
    div.user_list{
        display: flex;
        align-items: center;
    }
    /* h3 */
    div.find_user_list h3{
        margin: 0;
        display: inline-block;
    }
    /* 头像样式 */
    div.find_user_list img{
        width: 60px;
        height: 60px;
        border-radius: 30px;
        margin: 10px;
    }
    /* 按钮 */
    div.find_user_list .btn{
        width: 100px;
    }
</style>
