import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Home from "./components/weixin/Home.vue"




Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},
  ]
})
