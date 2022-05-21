const HomeDashboard = () => import( /* webpackChunkName: "leaf-home-dashboard" */ '../views/HomeDashboard.vue')

let HomeRoute = {
    name: 'Home',
    path: '/',
    alias: '/dashboard',
    component: HomeDashboard
 }

 
 export default HomeRoute