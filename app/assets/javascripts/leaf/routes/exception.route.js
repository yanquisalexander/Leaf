const ExceptionView = () => import( /* webpackChunkName: "leaf-exception" */ '../views/errors/Exception.vue')


let ExceptionRoute = {
    name: 'Exception',
    path: '/exception',
    component: ExceptionView
 }

 export default ExceptionRoute