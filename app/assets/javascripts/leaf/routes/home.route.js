const HomeDashboard = () => import( /* webpackChunkName: "leaf-home-dashboard" */ '../views/HomeDashboard.vue')

let HomeRoute = {
    name: 'Home',
    path: '/',
    component: HomeDashboard
 }

 
 export default HomeRoute