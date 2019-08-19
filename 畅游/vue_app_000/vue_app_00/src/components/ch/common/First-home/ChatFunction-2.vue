<template>
    <div id="chatfuncton2">
        <chatfunction3
        :searchiconimg="require('../../../../img/search-icon1.png')"
        :phonesearchicon="require('../../../../img/photo-icon.png')"
        :quitchatfunction2="quitchatfunction2"
        :searchdel="require('../../../../img/suggest-del-icon.png')"
        :chatfriend="chatfriend"
        ></chatfunction3>
    </div>
</template>

<script>
//引入子组件
import ChatFunction3 from './ChatFunction-3.vue'


export default {
    methods: {
        quitchatfunction2(){
            this.$router.push("/ChatFunction")
        },
        chatfriend(e){
            var id=e.target.dataset.id;
            var obj={uid:id};
            console.log(obj);
            // this.$router.push({name:'ChatFunction4',params:obj})
        }
    },
    //注册子组件并且给子组起一个名字
    components:{
        // "字符串"：子组件对象名称
        "chatfunction3":ChatFunction3,//底部导航栏组件

       



    }
}
</script>

<style>
   
</style>