<template>
    <div class="location_box">
        <mt-popup
  v-model="popupVisible"
  position="bottom">
  ...
</mt-popup>

        <img src="../../../../assets/location.png" alt="">
        <span class="location">周边地点</span>
    </div>
    
</template>

<script>
export default {
    data(){
        return{
           
        }
    },
    
}
</script>

<style scoped>
    /* 外层容器 */
    div.location_box{
        padding-top: 10px;
        display: flex;
        align-items: center;
    }
    .location{
        margin-left: 10px;
        font-size: 24px;
        color: #1296db;
        font-weight: bolder;
    }
</style>
