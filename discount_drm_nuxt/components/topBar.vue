<template>
  <div class="_dashboard_top_bar_wrapper" :class="getSideBarClosed ? '_dashboard_top_bar_wrapper_inactive':'_dashboard_top_bar_wrapper_active'">
    <div class="_dashboard_top_bar_wrap">
        <div v-if="authUser && authUser.user_type == 'CLIENT'" class="_dashboard_top_bar_inner_area">
           <div class="_dashboard_top_bar_inner_box">
          <div class="_dashboard_top_bar_inner_btn" v-for="(item, index) in data1" :key="index">
            <button type="submit" class="_dashboard_top_bar_inner_btn_link" :class="index == editIndex ? '_dashboard_top_bar_inner_btn_link_active': ''" @click="tabChanged(item,index)">
             {{ item.address }}
            </button>
          </div>
           <!-- <div class="_dashboard_top_bar_inner_btn">
            <button type="submit" class="_dashboard_top_bar_inner_btn_link _dashboard_top_bar_inner_btn_link_active">
              2383 E tiger Lily Dr
            </button>
          </div> -->
          <!-- <div class="_dashboard_top_bar_inner_btn">
            <button type="submit" class="_dashboard_top_bar_inner_btn_link">
              760 Main Street
            </button>
          </div> -->
          </div>
          <div class="_add_btn">
              <button  v-on:click="showDrop1 = !showDrop1" type="submit" class="_add_btn_link">Add House</button>
              <div v-if="showDrop1" class="_address_drop">
              <div class="_address_drop_bg"></div>
              <div class="_address_drop_area">
                <h4 class="_address_drop_area_title">Add New Home</h4>
                <p class="_address_drop_area_para">Add your home to track your value, access your equity, and manage your debt in real-time.</p>
                <!-- <div class="_address_bar">
                  <img src="../assets/images/location.svg" alt="" class="_location_img">
                  <p class="_location_para">760 Main Street, Boise ID 83716</p>
                </div> -->
                <div class="_address_input">
                  <img src="../assets/images/location.svg" alt="" class="_location_img">
                  <input type="text" v-model="address"  class="_address_bar" placeholder="760 Main Street, Boise ID 83716">
                </div>
                 <div class="_property_area">
                  <p class="_property_area_para">Is this a rental property?</p>
                  <div v-on:click="showDrop = !showDrop" class="_label_area">
                    <label class="_property_area_label">Yes</label>
                    <input value="CLIENT" type="radio" name="flexRadioDefault" id="flexRadioDefault1" class="form-check-input">
                  </div>
                </div>
                <form v-if="showDrop" class="_rental_from">
                  <label for="rental" class="_rental_from_label">Rental Amount</label><br>
                  <input type="text" class="_rental_from_input" placeholder="$">
                </form>
                <div class="_add_home_btn">
                  <button @click="addAddress()" type="submit" class="_add_home_btn_link">Add Home</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div  v-if="authUser && (authUser.user_type == 'ADMIN' || authUser.user_type == 'AGENT')" class="_dashboard_top_bar_inner">
          <div class="_dashboard_top_bar_search_wrap">
            <form class="_dashboard_top_bar_form_wrap" action="#0">
              <input
                placeholder="Search..."
                type="text"
                class="_dashboard_top_bar_search_input"
              />
              <span class="_dashboard_top_bar_search_input_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <path
                    fill="#333"
                    d="M21.71 20.29L18 16.61A9 9 0 1016.61 18l3.68 3.68a1.002 1.002 0 001.42 0 1 1 0 000-1.39zM11 18a7 7 0 110-14 7 7 0 010 14z"
                  />
                </svg>
              </span>
            </form>
          </div>
          <div v-if="authUser && authUser.user_type == 'ADMIN'" class="_dashboard_top_bar_pricing_btn_wrap">
            <!-- <button  @click="$router.push(`/pricingEngine/hotline`)" class="_dashboard_top_bar_pricing_btn">Pricing Engine</button> -->
            <nuxt-link to="/ratetable" class="_dashboard_top_bar_pricing_btn">Pricing Engine</nuxt-link>
          </div>
          <div v-if="authUser && authUser.user_type == 'AGENT'" class="_dashboard_top_bar_pricing_btn_wrap">
              <div class="_agent_side_info_client">
                  <button v-on:click="showDropC = !showDropC" class="_dashboard_top_bar_pricing_btn">Add Client</button>
                  <div v-if="showDropC" class="_dashboard_top_bar_client_drop">
                      <form class="_agent_login_form">
                          <div class="_login_inpt_area">
                              <label class="_agent_login_form_label">
                                  Client’s name
                              </label><br>
                              <input type="text" placeholder="" class="_agent_login_form_input">
                          </div>
                          <div class="_login_inpt_area">
                              <label class="_agent_login_form_label">
                                  Phone
                              </label><br>
                              <input type="number" placeholder="" class="_agent_login_form_input">
                          </div>
                          <div class="_login_inpt_area">
                              <label class="_agent_login_form_label"> Email
                              </label><br>
                              <input type="email" placeholder="" class="_agent_login_form_input">
                          </div>
                          <div class="_login_inpt_area _login_inpt_area_btn1">
                              <button type="submit" class="_login_btn1">Refer Client</button>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
          <div v-if="authUser && (authUser.user_type == 'ADMIN' || authUser.user_type == 'AGENT')" class="_dashboard_top_bar_profile_wrap">
            <div class="_dashboard_top_bar_notification_wrap">
              <button v-on:click="showDrop6 = !showDrop6" class="_dashboard_top_bar_notification_btn">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <path
                    fill="#3E5577"
                    d="M20.527 15.207l-1.8-1.81v-4.46a6.86 6.86 0 00-5.82-6.88 6.74 6.74 0 00-7.62 6.67v4.67l-1.8 1.81a1.64 1.64 0 001.16 2.79h3.36v.34a3.84 3.84 0 004 3.66 3.84 3.84 0 004-3.66v-.34h3.36a1.64 1.64 0 001.16-2.79zm-6.52 3.13a1.88 1.88 0 01-2 1.66 1.88 1.88 0 01-2-1.66v-.34h4v.34zm-8.49-2.34l1.18-1.18a2 2 0 00.59-1.42v-4.67a4.73 4.73 0 011.62-3.56 4.67 4.67 0 013.74-1.17 4.86 4.86 0 014.08 4.9v4.5a1.999 1.999 0 00.58 1.42l1.19 1.18H5.517z"
                  />
                </svg>
              </button>
              <div v-if="showDrop6" class="_noti_drop">
                <div class="_noti_drop_bg"></div>
                <div class="_dashboard_notification_drop">
                <div class="_dashboard_notification_drop_top">
                  <h4>Notifications</h4>
                  <button type="submit">Clear All</button>
                </div>
                <hr>
                <div class="_dashboard_notification_drop_all">
                  <div class="_dashboard_top_notification_left">
                    <div class="_dashboard_top_notification_left_icon">
                      <div class="_dashboard_top_notification_left_icon_circle"></div>
                    </div>
                    <h4>Susance Tester</h4>
                  </div>
                  <div class="_dashboard_top_notification_right">
                    <p>Responded</p>
                  </div>
                </div>
              </div>
              </div>
            </div>
            <div class="_dashboard_top_bar_profile_info_wrap">
              <div class="_dashboard_top_bar_profile_img_wrap">
                <img
                  src="../assets/images/profile.png"
                  alt=""
                  class="_dashboard_top_bar_profile_img"
                />
              </div>

              <div class="_dashboard_top_bar_profile_name_wrap">
                <div class="_dashboard_top_bar_profile_info">
                  <div class="_dashboard_top_bar_profile_name">{{authUser.first_name}} {{authUser.last_name}}</div>
                  <p class="_dashboard_top_bar_profile_active_bar">(208) 000-0000</p>
                </div>
                <div class="_dashboard_top_bar_drop_icon" @click="dropDown = !dropDown">
                    <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6">
                        <path fill="#112032" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path>
                    </svg>
                </div>
              </div>
              <div class="_nav_dropdown_area" :class="dropDown?'': '_dashboard_top_bar_profile_dropdown_hide'">
                <div class="_nav_drop_bg"></div>
                <div class="_dashboard_top_bar_profile_dropdown">
                  <!-- <div class="_drop_active_person">
                    <p>Available</p>
                    <label class="switch">
                      <input type="checkbox" defaultchecked="defaultchecked">
                      <span class="slider round"></span>
                    </label>
                  </div> -->
                  <ul>
                        <li @click="dropDown=false">
                            <nuxt-link to="settings">
                              Settings
                            </nuxt-link>
                        </li>
                        <li>
                            <a href="#0">help center</a>
                        </li>
                        <li @click="logout">
                            <a   Sign Out>Sign Out</a>
                        </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
</template>

<script>
import {mapGetters} from 'vuex'

export default({
  data(){
    return{
      address:'',
      editIndex:0,
      data1:[{address:'All'},{address: '2383 E tiger Lily Dr'},{address: '760 Main Street'}],
      showDropC:false,
      showDrop:false,
      showDrop1:false,
      showDrop6:false,
      dropDown:false
    }
  },
    computed:{
      ...mapGetters({
        authUser:'getAuthUser',
        getSideBarClosed: 'leftSidebar/getSideBarClosed'
      })
    },
  methods:{
    async addAddress(){
      this.data1.push({address:this.address})
      this.showDrop1 = false
     },
    async tabChanged(item,index){
      this.editIndex =index
    },
    async logout() {
      console.log("first")
      const res = await this.callApi("get", "/auth/logout");
      if (res.status == 200) {
         this.$store.commit("loginUser", false);
         window.location = "/login";
      }
    },
  }
})
</script>
