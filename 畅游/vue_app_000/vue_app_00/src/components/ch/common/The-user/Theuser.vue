<template>
  <div>
    <div>
      <p @click="xiala">用户一 ↓</p>
    </div>
    <div>
      <mt-popup
  v-model="popupVisible"
  position="bottom">
  <div class="alert">添加账户</div>
</mt-popup>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      //action sheet 选项内容
      popupVisible: false
    }
  },
  methods: {
    xiala(){
      this.popupVisible=true;
    }
  },
}
</script>
<style scoped>
  .alert{
    width:400px;
    height: 300px;
  }
</style>