// 引入文件
import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Home3 from "./components/ch/Home.vue"//项目主页面
import Photo from "./components/ch/common/First-home/Photo.vue"//开启相机功能页面
import PhoneInstall from "./components/ch/common/First-home/PhotoInstall.vue"//开启相机功能
import Tv from "./components/ch/common/First-home/Tv.vue"//IGTV视频页面
import AddTv from "./components/ch/common/First-home/AddTv.vue" //添加视频及照片页面
import Search from "./components/ch/common/First-home/Search.vue"//搜索用户视频界面
import AddTv1 from "./components/ch/common/First-home/AddTv-1.vue"//开启相册功能页面
import Camera from "./components/ch/common/First-home/Camera.vue"//开启相机功能
import SuggestListAllMsg from "./components/ch/common/First-home/SuggestListAllMsg.vue"//推荐网友列表主页面

// // 李
// // 引入Home.vue
import home from "./components/ch/Home.vue"
// // 引入搜索页面组件
import search from "./components/ch/common/second-search/Search.vue"
// 引入查找用户组件
import finduser from "./components/ch/common/second-search/FindUser.vue"
// 引入热门搜索组件
import hotsearch from "./components/ch/common/second-search/SearchList.vue"
// 引入注册组件
import regist from "./components/ch/common/second-search/Regist.vue"
// 引入登录组件
import login from "./components/ch/common/second-search/Login.vue"





Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},//vue页面
    {path:'/Cy',component:Home3},//主页面
    {path:'/Photo',component:Photo},//访问手机相机页面
    {path:"/PhoneInstall",component:PhoneInstall},//相机权限页面
    {path:"/Tv",component:Tv},//TV视频页面
    {path:"/AddTv",component:AddTv},//上传视频相册页面
    {path:"/AddTv-1",component:AddTv1},//访问手机内视频的权限
    {path:"/Search",component:Search},//搜索用户视频界面
    {path:"/Camera",component:Camera},//开启照相直播页面
    {path:"/SuggestListAllMsg",component:SuggestListAllMsg},


    // // 李
    {path:'/home',component:home},
    {path:'/finduser',component:finduser},
    {path:'/sea',component:search},
    {path:'/hotsearch',component:hotsearch},
    {path:'/regist',component:regist},
    {path:'/login',component:login},
  ]
})
