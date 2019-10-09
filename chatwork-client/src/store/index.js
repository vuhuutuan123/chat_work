import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import VueCookies from 'vue-cookies'

Vue.use(Vuex)
Vue.use(VueCookies)

export default new Vuex.Store({
  state: {
    user: $cookies.get('user') || {},
    token: $cookies.get('token') || '',
    status: $cookies.get('login_status') || null
  },

  mutations: {
    // will set the status to loading
    loadingMutation(state) {
      state.status = 'loading'
     },

    // will set the loading and token to success
    loginSucessMutation(state, data) {
      state.status = data.status
      state.token = data.token
      state.user = data.user
    },

    // this will set the loading as False
    loginFailureMutation(state) {
      $cookies.remove('user')
      $cookies.remove('token')
      $cookies.remove('login_status')
      state.status = 'failure'
      state.token = ''
      state.user = {}
    }
  },

  actions: {
    // this will be called from the components and call the loginMutation.
    loginAction ({ commit }, userDetails) {
      // update the state to loading
      commit('loadingMutation')
      return new Promise((resolve, reject) => {
        axios.post('http://localhost:3000/api/v1/sign_in', userDetails)
          .then(response => {
            // success response, save the response to the vuex Store
            const token = response.data.auth_token
            const user = response.data.user
            const status = 'success'
            commit('loginSucessMutation', { status, token, user })
            $cookies.set('login_status', 'success');
            $cookies.set('token', token);
            $cookies.set('user', JSON.stringify(user));
            console.log( $cookies.get('user'))
            axios.defaults.headers.common['Authorization'] = token
            resolve(response)
          })
          .catch(error => {
            // failure to login, remove the token if any
            commit('loginFailureMutation')
            reject(error)
          })
      })
    },
    logoutAction ({ commit }) {
      commit('loginFailureMutation')
    }
  }
})
