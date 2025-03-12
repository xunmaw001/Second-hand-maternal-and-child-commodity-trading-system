import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import discussshangjiaxinxi from '@/views/modules/discussshangjiaxinxi/list'
    import dingdanpingjia from '@/views/modules/dingdanpingjia/list'
    import discussrexiaoshangpin from '@/views/modules/discussrexiaoshangpin/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import forum from '@/views/modules/forum/list'
    import shangjiaxinxi from '@/views/modules/shangjiaxinxi/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import orders from '@/views/modules/orders/list'
    import config from '@/views/modules/config/list'
    import rexiaoshangpin from '@/views/modules/rexiaoshangpin/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '母婴资讯',
        component: news
      }
          ,{
	path: '/discussshangjiaxinxi',
        name: '商家信息评论',
        component: discussshangjiaxinxi
      }
          ,{
	path: '/dingdanpingjia',
        name: '订单评价',
        component: dingdanpingjia
      }
          ,{
	path: '/discussrexiaoshangpin',
        name: '热销商品评论',
        component: discussrexiaoshangpin
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/forum',
        name: '交流中心',
        component: forum
      }
          ,{
	path: '/shangjiaxinxi',
        name: '商家信息',
        component: shangjiaxinxi
      }
          ,{
	path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/chat',
        name: '在线咨询',
        component: chat
      }
          ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/rexiaoshangpin',
        name: '热销商品',
        component: rexiaoshangpin
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
