//import Vuex from 'vuex'
//import axios from 'axios'

export const strict = false
export const state = () => ({
    authUser: false,
    userProfileInfo: false,
    peopleDetailsRightOn:true,
    addEmployee:false,
    addAgent:false,
})
// common getters
export const getters ={
  getAuthUser(state){
    return state.authUser
  },
  getAddEmployee(state){
    return state.addEmployee
  },
  getAddAgent(state){
    return state.addAgent
  },
  getPeopleDetailsRightOn(state){
    return state.peopleDetailsRightOn
  },
  getUserProfileInfo(state) {
    return state.userProfileInfo;
  }
}
//mutations for changing data from action
export const mutations = {
  loginUser(state, data) {
    state.authUser = data
  },
  setAddEmployee(state, data) {
    state.addEmployee = data
  },
  setAddAgent(state, data) {
    state.addAgent = data
  },
  setUserProfileInfo(state, data) {
    state.userProfileInfo = data;
  },
  setPeopleDetailsRightOn(state, data) {
    state.peopleDetailsRightOn = data;
  },
}
// actionns for commiting mutations
export const actions = {
  async nuxtServerInit({ commit }, { $axios }) {

    try {
      // get the initial data
      console.log("nuxt server init")
      let { data } = await $axios.get('auth/getUser')
      console.log(data)
      commit('loginUser', data)

    } catch (e) {
        console.log('Pleae login ')
    }
  },
}
