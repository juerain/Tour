<template>
    <div>
        <div id="d1">
            <img class="img-21" src="../../../img/quit-icon1.png" @click="quit1"/>
            <span class="span-21">IGTV</span>
            <img class="img-22" src="../../../img/search-icon.png" />
            <img class="img-23" src="../../../img/join-icon1.png" @click="addInstall" />
        </div>
        <div>
            <!-- <img src="../../../img/" alt=""> -->
        </div>
    </div>
</template>

<script>
export default {
    methods:{
        quit1(){
            this.$router.push("/cy");
        },
        addInstall(){
            this.$router.push("/AddTv");
        }
    }
}
</script>

<style>
    #d1{
        height:500px;
        background: #000;
    }
    .img-21{
        width:25px;
        height:25px;
        margin-top:15px;
        margin-left:5px;
    }
    .span-21{
        color:#fff;
        font-size: 20px;
        margin-left: 130px;
    }
    .img-22{
        width:25px;
        height:25px;
        margin-left:86px;
    }
    .img-23{
         width:25px;
        height:25px;
        margin-left:9px;
    }
</style>