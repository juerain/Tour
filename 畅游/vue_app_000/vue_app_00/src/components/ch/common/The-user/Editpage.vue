<template>
  <div>
    <i @click="fanhui"><img style="" src="../../../../assets/关闭.png" alt=""></i>   编辑主页
  </div>
</template>
<script>
export default {
  data() {
    return {
      
    }
  },  
  methods: {
    fanhui(){
      this.$router.push("/theuser");
    }
  },
}
</script>
<style scoped>
  
</style>