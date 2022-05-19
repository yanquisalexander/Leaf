import Vue from "vue";
import VueRouter from 'vue-router'
import Meta from 'vue-meta'


Vue.use(VueRouter)
Vue.use(Meta)


function loadRoutes() {
  const routes = require.context('./', true, /\.route\.js$/)
  return routes.keys()
    .map(routes)         // import module
    .map(m => m.default)  // get `default` export from each resolved module
}

let routes = loadRoutes()



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

window.LeafRouter = router

export default router;