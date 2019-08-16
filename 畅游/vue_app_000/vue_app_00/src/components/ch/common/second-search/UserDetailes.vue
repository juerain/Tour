<template>
    <div>
        <div class="title_box">
            <img  src="../../../../assets/arrows.png" alt="" class="arrows">
            <h3 class="title">发现</h3>
        </div>
        <div class="detaile">
            <div class="head">
                <img src="../../../../assets/arrows.png" alt="">
                <span>用户名</span>
                <span>昵称</span>
            </div>
            <img class="photo" src="../../../../assets/1.jpg" alt="">
            <div class="love">
                <img src="../../../../assets/praise.png" alt="">
                <img src="../../../../assets/discuss.png" alt="">
                <img src="../../../../assets/discuss.png" alt="">
                <img src="../../../../assets/label.png" alt="" class="label">
            </div>
            <p class="praise"><span>236次赞</span>
            </p>
            <p><span class="user">用户名</span> jidnfdffdijfjspa <span>更多</span></p>
            <p class="similar">2天前·你赞过相似的照片·<span>查看翻译</span></p>
        </div>
    </div>
</template>


<script>
export default {
    
}
</script>

<style scoped>
    /* 顶部标题 */
    div.title_box{
        display: flex;
        justify-content: flex-start;
        background: #eee;
    }
    /* 箭头 */
    .arrows{
        width: 40px;
        height: 40px;
    }
    /* 标题 */
    .title{
        font-size: 20px;
        margin: 7px 0px 0px 20px;
    }
    /* 照片样式 */
    .photo{
        width: 100%;
        height: 400px;
    }
    /* 照片下部样式 */
    div.love img{
        width: 30px;
        margin-left: 10px;
    }
    /* 标签样式 */
    .label{
        float: right;
    }
    /* 点赞样式 */
    .praise,.user{
        font-weight: bolder;
    }
    /* 用户名 */
    /* 相似照片 */
    .similar{
        color: #666;
        font-size: 14px;
    }
    .similar>span{
        color: black;
        font-weight: bolder;
    }
</style>
