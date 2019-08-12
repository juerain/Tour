<template>
    <div>
        <button @click="openAlert">开启相机及其麦克风设备</button>
    </div>
</template>
<script>
export default {
    methods: {
        openAlert(){
            this.$messagebox("","执行成功");
            this.$router.push("/cy");
        },
    },
}
</script>

<style>
    
</style>