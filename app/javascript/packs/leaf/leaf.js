// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Vue from 'vue'
import Vuetify from 'vuetify'
import App from './app.vue'
import $ from 'jquery'

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Vue.use(Vuetify)


$.ajaxSetup({
    timeout: 10000,
    beforeSend: function (xhr) {
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
    },
    complete: function (xhr, status) {
        if (xhr.status === 200 || xhr.status === 422) {
            return true;
        }
        if (xhr.status === 404) {
            // return window.location.href = '/404';
        }
        
        // return window.location.href = '/500';
    }
})

window.$ = $;

document.addEventListener('DOMContentLoaded', () => {
    const app = new Vue({
        el: '#leaf',
        vuetify: new Vuetify(),
        render: h => h(App)
    }).$mount()
    document.body.appendChild(app.$el)
})

Rails.start()
ActiveStorage.start()


