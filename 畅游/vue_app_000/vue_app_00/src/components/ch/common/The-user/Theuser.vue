<template>
  <div>
    <div class="nav">
      <p @click="xiala">suntom9 <img src="../../../../assets/按钮_选中_o.png" alt=""></p>
      <i @click="youla"><img src="../../../../assets/收起按钮icon.png" alt=""></i>
    </div>
    <div>
      <mt-popup id="div"
  v-model="popupVisible"
  position="bottom">
  <div class="alert">
    <i class="icon"></i>
    <p>添加账户</p>
  </div>
</mt-popup>
      <mt-popup id="div2"
      v-model="popup2Visible"
      position="right">
        <div>
          设置栏
        </div>
      </mt-popup>
    </div>
    
  </div>
</template>
<script>
export default {
  data() {
    return {
      //action sheet 选项内容
      popupVisible: false,
      popup2Visible:false
    }
  },
  methods: {
    xiala(){
      var div=document.getElementById("div");
      div.style.width="100%";
      div.style.borderTopLeftRadius="8px";
      div.style.borderTopRightRadius="8px";
      console.log(div)
      this.popupVisible=true;
    },
    youla(){
      this.popup2Visible=true;
    }
  },
}
</script>
<style scoped>
  .alert{
    height:200px;
  }
  .nav{
    display:flex;
    justify-content:space-between;
    align-items: center;
  }
</style>