import Vue from "vue";
import VueRouter from 'vue-router'
import Meta from 'vue-meta'


Vue.use(VueRouter)
Vue.use(Meta)

const routes = [
    { path: '/',
    name: "home",
    alias: '/home',
    meta: {
        layout: 'ApplicationLayout'
    }
},
];



const router = new VueRouter({
    mode: "history",
    routes
});

router.beforeResolve((to, from, next) => {
    if (window.MiniProfiler !== undefined) {
        window.MiniProfiler.pageTransition();
        next()
      }
    else next()
  })

export default router;