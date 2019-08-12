import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Home from "./components/weixin/Home.vue"

// 引入文件
import Home3 from "./components/ch/Home.vue"
import Photo from "./components/ch/common/Photo.vue"
import PhotoInstall from "./components/ch/common/PhotoInstall.vue"
import Tv from "./components/ch/common/Tv.vue"
import AddTv from "./components/ch/common/AddTv.vue"

Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},
    {path:'/cy',component:Home3},
    {path:'/Photo',component:Photo},
    {path:"/PhotoInstall",component:PhotoInstall},
    {path:"/Tv",component:Tv},
    {path:"/AddTv",component:AddTv}
  ]
})
