import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";

Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: "/about",
      name: "about",
      component: () => import("./views/About.vue")
    },
    {
      path: "/sign_up",
      name: "sign_up",
      component: () => import("./views/SignUp.vue")
    },
    {
      path: "/sign_up/success",
      name: "sign_up_success",
      component: () => import("./views/SignUpSuccess.vue")
    }
  ]
});
