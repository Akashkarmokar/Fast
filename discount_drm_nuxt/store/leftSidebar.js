export const strict = false
export const state = () => ({
   sidebarSelected:"index",
   sideBarClosed:false
})

export const getters = {
  getsidebarSelected(state){
    return state.sidebarSelected;
  },
  getSideBarClosed(state){
    return state.sideBarClosed;
  }
}
//mutations for changing data from action
export const mutations = {
   setsidebarSelected(state, data) {
     state.sidebarSelected = data;
   },
   setSideBarClosed(state, data) {
     state.sideBarClosed = data;
   },
}
