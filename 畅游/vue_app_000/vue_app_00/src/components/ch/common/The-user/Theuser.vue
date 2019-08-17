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
        <div class="set">
          <div>
            <p>suntom9</p>
          <ul>
            <li>私人影集</li>
            <li>你的活动</li>
            <li>名片</li>
            <li>收藏夹</li>
            <li>密友</li>
            <li>发现用户</li>
          </ul>
          </div>
          <div>
            <p>设置</p>
          </div>
        </div>
      </mt-popup>
    </div>
    <div class="userNav">
      <div>
        <img class="user_img" width="100px" height="100px" src="../../../../assets/ic_contacts_normal.png" alt="">
      </div>
      <i @click="touxiang" class="add"><img src="../../../../assets/添加.png" alt=""></i>
      <mt-actionsheet
       :actions="data"
       v-model="sheetVisible" 
      >
      </mt-actionsheet>
      <div style="width:70%;">
        <ul>
          <li>
            <i>0</i>
            <p>帖子</p>
          </li>
          <li>
            <i>0</i>
            <p>粉丝</p>
          </li>
          <li>
            <i>32</i>
            <p>已关注</p>
          </li>
        </ul>
      </div>
    </div>
    <div style="margin-top:10px;">
      <p style="margin:0">Sun Tom</p>
      <p style="margin:0">个性签名</p>
    </div>
    <div>
      <button class="zhuyeBtn">编辑主页</button>
    </div>
    <div>
      <div></div>
      <div></div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      data:[{
        name:'拍照',
        methods:this.getCamera
      },
      {
        name:'从相册中选择',
        methods:this.getLibary
      }      
      ],
      sheetVisible:false,
      //action sheet 选项内容
      popupVisible: false,
      popup2Visible:false
    }
  },
  methods: {
    touxiang(){
      this.sheetVisible=true;
    },
    getCamera(){
      console.log("打开相机");
    },
    getLibary(){
      console.log("打开相册");
    },
    xiala(){
      var div=document.getElementById("div");
      div.style.width="100%";
      div.style.borderTopLeftRadius="8px";
      div.style.borderTopRightRadius="8px";
      console.log(div)
      this.popupVisible=true;
    },
    youla(){
      var div2=document.getElementById("div2");
        div2.style.width="70%";
        div2.style.height="100%";
      this.popup2Visible=true;
    }
  },
}
</script>
<style scoped>
  .alert{

    width:100%;
    height: 300px;

    height:200px;
  }
  .nav{
    display:flex;
    justify-content:space-between;
    align-items: center;

  }
  .set{
    height:100%;
    display: flex;
    flex-direction:column;
    justify-content:space-between;
  }
  .set ul{
    list-style: none;
  }
  .set ul>li{
    margin:10px 0;
  }
  .user_img{
    border:1px solid #ccc;
    border-radius:50%;
  }
  .userNav{
    display:flex;
    width:100%;
    align-items: center;
  }
  .userNav div>ul{
    list-style: none;
    display:flex;
    justify-content: space-between;
  }
  .add{
    position:absolute;
    left:79px;top:127px;
  }
  .zhuyeBtn{
    width:100%;
    background:#fff;
    border:1px solid #ccc;
    border-radius:3px;
    padding:3px 0;
    margin:20px 0 5px 0;
  }
</style>