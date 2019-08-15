<template>
    <div>
        <!-- 推荐用户列表子组件 -->
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{user}}</h3>
                <span>{{nickname}}</span>
            </div>
            <span>×</span>
        </div>
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{user}}</h3>
                <span>{{nickname}}</span>
            </div>
            <span>×</span>
        </div>
        <div class="find_user_list">
            <div class="user_list">
                <img :src="userListImg" alt="">
                <h3>{{user}}</h3>
                <span>{{nickname}}</span>
            </div>
            <span>×</span>
        </div>
    </div>
    
</template>

<script>
export default {
    // 接收父组件传来的数据
    props:{
        userListImg:{default:""},
        user:{default:""},
        nickname:{default:""},
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
</style>
