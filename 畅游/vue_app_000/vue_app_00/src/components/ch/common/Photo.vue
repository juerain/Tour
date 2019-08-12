<template>
    <div id="photo">
        <img src="../../../img/quit-icon.png" class="quitimgstyle" @click="quit"/>
        是否
        <div id="photo-div">
            <span class="span-11">分享到Instagram</span>
            <span class="span-12">允许访问即可拍摄照片和视频</span>
            <a href=":javascript:;"><span class="span-13" @click="photoInstall">允许访问相机</span></a>
            <a href=":javascript:;"><span class="span-14" @click="photoInstall">启用麦克风访问权限</span></a>
        </div>
    </div>
</template>

<script>
export default {
    props:{//接收 Home.vue 父组件数据
        
    },
    methods: {
        quit(){//点击返回主页面
            this.$router.push("/cy");
        },
        photoInstall(e){
            // 阻止a标签默认行为
             e.preventDefault();
             this.$router.push("/PhotoInstall");
        }
    },
}
</script>

<style>
    /* 背景 */
    #photo{
        position: relative;/*相对定位*/
        background: #000;
        height:800px;
    }
    #photo-div{
        position: absolute;
        top:200px;
        left:82px;
    }
    /* 退出图标 */
    .quitimgstyle{
        position: absolute;/*绝对定位*/
        top:20px;
        right:4px; 
    }
    /* span标签 */
    .span-11,.span-12,.span-13,.span-14{
        display: block;
        text-align: center;
        color: #fff;
        margin-top:10px;
        font-size: 15px;;
    }
    .span-13,.span-14{
        color:#00a3ff;/*颜色*/
        margin-top:30px;
    }
    a{
        text-decoration: none;
    }
</style>