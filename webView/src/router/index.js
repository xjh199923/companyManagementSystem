import Vue from 'vue';
import Router from 'vue-router';

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/',
            redirect: '/dashboard'
        },
        {
            path: '/',
            component: () => import('../components/common/Home.vue'),
            meta: { title: '自述文件' },
            children: [
                {
                    path: '/dashboard',
                    component: () => import('../components/page/Dashboard.vue'),
                    meta: { title: '系统首页' }
                },
                {
                    path: '/staff',
                    component: () => import('../components/page/Staff.vue'),
                    meta: { title: '员工信息', permission: true }
                },
                {
                    path: '/customer',
                    component: () => import('../components/page/Customer.vue'),
                    meta: { title: '客户信息', permission: true }
                },
                {
                    path: '/project',
                    component: () => import('../components/page/Project.vue'),
                    meta: { title: '项目信息', permission: true }
                },
                {
                    path: '/prosalary',
                    component: () => import('../components/page/Prosalary.vue'),
                    meta: { title: '项目工资清单', permission: true }
                },
                {
                    path: '/allsalary',
                    component: () => import('../components/page/Allsalary.vue'),
                    meta: { title: '总工资清单' }
                },
                {
                    path: '/progress',
                    component: () => import('../components/page/Progress.vue'),
                    meta: { title: '项目进度信息' }
                },
                {
                    path: '/403',
                    component: () => import('../components/page/403.vue'),
                    meta: { title: '403' }
                }
            ]
        },
        {
            path: '/login',
            component: () => import(/* webpackChunkName: "login" */ '../components/page/Login.vue'),
            meta: { title: '登录' }
        },
        {
            path: '*',
            redirect: '/404'
        }
    ]
});
