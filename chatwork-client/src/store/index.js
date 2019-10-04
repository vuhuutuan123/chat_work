import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    //user authenticate
    user: {},
    token: localStorage.getItem('token') || '',
    status: null
  },

  mutations: {
    loadingMutation (state) {
      state.status = 'loading'
    },
    loginSuccessMutation (state, { token, userObject }) {
      state.status = 'success'
      state.token = token
      state.user = userObject
    },
    loginFailureMutation (state) {
      state.status = 'failure'
      state.token = ''
      state.user = {}
    },
  },
  actions: {
    loginAction({ commit }, userDetails) {
      commit('loadingMutation')
      return new Promise((resolve, reject) => {
        axios.post('localhost:3000/users/sign_in', userDetails)
          .then(response => {
            const token = response.data.auth_token
            const user = response.data.user
            commit('loginSuccessMutation', { token, user })
            localStorage.setItem('token', token)
            axios.defaults.headers.common['Authorization'] = token
            resolve(response)
          })
          .catch(error => {
            commit('loginFailureMutation')
            localStorage.removeItem('token')
            reject(error)
          })
      })
    }
  }
})