const NotFoundView = () => import( /* webpackChunkName: "leaf-not-found" */ '../views/errors/NotFound.vue')


let NotFoundRoute = {
    name: 'NotFound',
    path: '*',
    alias: '/not-found',
    component: NotFoundView
 }


 
 export default NotFoundRoute