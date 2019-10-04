import Vue from 'vue'
import Router from 'vue-router'
import Example from '@/components/Example'
import Login from '@/views/Login'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Example',
      component: Example
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    }
  ]
})
