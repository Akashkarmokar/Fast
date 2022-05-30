<template>
  <div class="_dashboard_main_wrap">
    <div class="_dashboard_main_wrap_inner"  v-if="authUser && (authUser.user_type == 'ADMIN' || authUser.user_type == 'AGENT')">
      <div class="_dashboard_main_top">
        <div class="_dashboard_main_top_btn">
          <ul>
            <li>
              <nuxt-link to="/" class="_dashboard_main_btn_link" :class="
                                isActive == 0
                                  ? '_dashboard_main_btn_link_active'
                                  : ''
                              ">Dashboard</nuxt-link>
            </li>
            <li>
              <nuxt-link to="/rankings" class="_dashboard_main_btn_link" :class="
                                isActive == 1
                                  ? '_dashboard_main_btn_link_active'
                                  : ''
                              ">Rankings</nuxt-link>
            </li>
            <!-- <li>
              <nuxt-link to="/marketing" class="_dashboard_main_btn_link" :class="
                                isActive == 2
                                  ? '_dashboard_main_btn_link_active'
                                  : ''
                              ">Marketing</nuxt-link>
            </li> -->
          </ul>
        </div>
        <div class="_dashboard_main_top_inner">
          <div class="_dashboard_main_top_select _mar_lr">
            <select
              class="form-select _top_select_dshbrd"
              aria-label="Default select example"
            >
             <option selected disabled>Select Loan Officer</option>
              <option value="{1}">Today</option>
              <option value="{2}">This Week</option>
              <option value="{3}">This Month</option>
              <option value="{3}">This Year</option>
            </select>
          </div>

           <div class="_dashboard_main_top_select _mar_lr">
            <select
              class="form-select _top_select_dshbrd"
              aria-label="Default select example"
            >
             <option selected disabled>Select Agent</option>
              <option value="{1}">Today</option>
              <option value="{2}">This Week</option>
              <option value="{3}">This Month</option>
              <option value="{3}">This Year</option>
            </select>
          </div>

          <div class="_dashboard_main_top_select _mar_lr">
            <select
              class="form-select _top_select_dshbrd"
              aria-label="Default select example"
            >
             <option selected disabled>Select Lead Source</option>
              <option value="{1}">Today</option>
              <option value="{2}">This Week</option>
              <option value="{3}">This Month</option>
              <option value="{3}">This Year</option>
            </select>
          </div>

          <div class="_dashboard_main_top_select _mar_lr">
            <input type="date" class="_top_select_dshbrd _top_inpt_dshbrd">
          </div>
          <!-- <div class="_dashboard_main_top_btn _mar_lr">
            <button type="submit" class="_dashboard_main_top_btn_link">
              Run Numbers
            </button>
          </div>
          <div class="_dashboard_main_top_value">
            <div class="_dashboard_main_top_value_volume">
              <p class="_dashboard_main_top_para">Units</p>
            </div>
            <div class="_dashboard_main_top_value_volume">
              <label class="switch">
                <input type="checkbox" defaultChecked />
                <span class="slider round" />
              </label>
            </div>
            <div class="_dashboard_main_top_value_volume">
              <p class="_dashboard_main_top_para">Volume</p>
            </div>
          </div> -->
        </div>
      </div>
      <div class="_dashboard_main_middle_wrap">
        <div class="row">
          <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12">
            <div class="row align-items-center">

              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                  <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Total Leads</p>
                    <!-- <p class="_dashboard_main_inner_txt_para">75%</p> -->
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Responded</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Application</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">In Process</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
             <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Closed</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">15</h4>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">SMS Sent</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Email Sent</p>
                    <p class="_dashboard_main_inner_txt_para">100%</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">100</h4>
                  </div>
                </div>
              </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner _dashboard_main_inner_box">
                  <div class="_dashboard_main_inner_area">
                     <p class="_nps_txt">NPS Score</p>
                      <!-- <p class="_nps_para">Excellent</p> -->
                      <div class="_dashboard_main_inner_txt">
                        <h4 class="_dashboard_main_inner_title">90</h4>
                      </div>
                  </div>
                </div>
              </div>
           </div>
          </div>
        </div>
      </div>
      <!-- <hr>
      <div class="_dashboard_main_source_wrap">
        <div class="row">
           <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">SMS Sent</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">50</h4>
                  </div>
                </div>
              </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Emails Sent</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">50</h4>
                  </div>
                </div>
              </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Rate Alerts</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">50</h4>
                  </div>
                </div>
              </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                <div class="_dashboard_main_inner">
                   <div class="_dashboard_main_inner_inf">
                    <p class="_dashboard_main_inner_para">Home Reports</p>
                  </div>
                  <div class="_dashboard_main_inner_txt">
                    <h4 class="_dashboard_main_inner_title">50</h4>
                  </div>
                </div>
              </div>
          <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
            <div class="_dashboard_main_leading_source_inner">
              <h4 class="_dashboard_main_ranking_inner_title">Lead Source</h4>
              <div class="_dashboard_main_source_table">
                <div class="_table_heading">
                  <ul class="_table_heading_list">
                    <li class="_table_heading_list_item">Total leads</li>
                    <li class="_table_heading_list_item">Responded</li>
                    <li class="_table_heading_list_item">Closed</li>
                  </ul>
                </div>
                <div class="_dashboard_main_source_table_wrap">
                  <div class="_dashboard_main_total">
                    <div class="_dashboard_main_ranking_num">
                      <span>1</span>
                    </div>
                    <div class="_dashboard_main_ranking_iamge">
                      <img
                        src="assets/images/logo1.svg"
                        alt="Image"
                        class="_source_img"
                      />
                    </div>
                  </div>
                  <div class="_dashboard_main_ranking_leadse">
                    <span>1,500</span>
                  </div>
                  <div class="_dashboard_main_ranking_close">
                    <span>500 (30%)</span>
                  </div>
                  <div class="_dashboard_main_ranking_volume">
                    <span>$10,000,00</span>
                  </div>
                </div>
                <hr class="_border" />
                <div class="_dashboard_main_source_table_wrap">
                  <div class="_dashboard_main_total">
                    <div class="_dashboard_main_ranking_num">
                      <span>1</span>
                    </div>
                    <div class="_dashboard_main_ranking_iamge">
                      <img
                        src="assets/images/logo2.svg"
                        alt="Image"
                        class="_source_img"
                      />
                    </div>
                  </div>
                  <div class="_dashboard_main_ranking_leadse">
                    <span>1,500</span>
                  </div>
                  <div class="_dashboard_main_ranking_close">
                    <span>500 (30%)</span>
                  </div>
                  <div class="_dashboard_main_ranking_volume">
                    <p>Closed</p>
                    <span>$10,000,00</span>
                  </div>
                </div>
                <hr class="_border" />
                <div class="_dashboard_main_source_table_wrap">
                  <div class="_dashboard_main_total">
                    <div class="_dashboard_main_ranking_num">
                      <span>1</span>
                    </div>
                    <div class="_dashboard_main_ranking_iamge">
                      <img
                        src="assets/images/logo3.svg"
                        alt="Image"
                        class="_source_img"
                      />
                    </div>
                  </div>
                  <div class="_dashboard_main_ranking_leadse">
                    <span>1,500</span>
                  </div>
                  <div class="_dashboard_main_ranking_close">
                    <span>500 (30%)</span>
                  </div>
                  <div class="_dashboard_main_ranking_volume">
                    <span>$10,000,00</span>
                  </div>
                </div>
                <hr class="_border" />
              </div>
            </div>
          </div>
        </div>
      </div> -->

    <div class="row">
      <div class="col-12 col-md-12 col-lg-6 col-xl-6">
           <div class="_dashboard_cnvrsnCrd">
            <div class="_dashboard_cnvrsnCrd_inr">
              <div class="_dashboard_cnvrsnCrd_top">
                <p class="_dashboard_cnvrsnCrd_txt1">
                  Latest Conversations
                </p>
              </div>

              <div class="_dashboard_cnvrsnCrd_lst_all">
                  <div class="_dashboard_cnvrsnCrd_lst" v-for="(item, index) in msgs" :key="index">
                    <div class="_dashboard_cnvrsnCrd_lst_top">
                      <h3 class="_dashboard_cnvrsnCrd_titl">
                         {{item.first_name}} {{item.last_name}}
                      </h3>
                      <p class="_dashboard_cnvrsnCrd_tym" v-if="item.client_chat && item.client_chat.created_at">
                       {{ item.created_at | luxon({ format: "dd/MM/yyyy" }) }}
                      </p>
                    </div>

                      <p class="_dashboard_cnvrsnCrd_txt2" v-if="item.client_chat && item.client_chat.message_data">
                        {{item.client_chat.message_data}}
                      </p>
                  </div>




              </div>

              <div class="_dashboard_cnvrsnCrd_btm">
                <nuxt-link to="/conversation">
                  <button class="_dashboard_cnvrsnCrd_btn">
                    View Conversations
                  </button>
                </nuxt-link>
              </div>
            </div>
          </div>
      </div>
      <div class="col-12 col-md-12 col-lg-6 col-xl-6">
        <div class="_dashboard_taskCrd">
          <div class="_dashboard_taskCrd_inr">
            <div class="_dashboard_cnvrsnCrd_top">
                <p class="_dashboard_cnvrsnCrd_txt1">
                  Tasks
                </p>
            </div>

            <div class="_dashboard_taskCrd_main">
              <div class="_dashboard_taskCrd_lft">
                  <img src="../assets/images/dashboard.png" alt="" class="_dashboard_top_bar_profile_img">

              </div>
               <div class="_dashboard_taskCrd_r8">
                   <h3 class="_dashboard_cnvrsnCrd_titl">
                     No tasks
                    </h3>
                    <p class="_dashboard_taskCrd_txt1">
                      Take a deep breath, you are up to date.
                    </p>
                  <button class="_dashboard_taskCrd_btn">
                      View Tasks
                  </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
     <div v-if="authUser && authUser.user_type == 'CLIENT'" class="_client_dashbaord_wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 _padd_0">
                        <div class="_client_dashbaord_top">
                            <div class="_client_dashbaord_top_btn1">
                                <button type="submit" class="_client_dashbaord_top_btn_link1">
                                    Remove
                                </button>
                            </div>
                             <div class="_client_dashbaord_top_btn">
                                <button type="submit" class="_client_dashbaord_top_btn_link">
                                   Download
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="_client_dashbaord_bottom">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                <div class="_client_dashboard_card">
                                    <h4 class="_client_dashboard_card_title">Value Tracker</h4>
                                    <h4 class="_client_dashboard_card_title1">$500,000</h4>
                                    <p class="_client_dashboard_card_para">
                                        <img src="../assets/images/Polygon.png" alt="" class="_client_dash_img">
                                        $287,345 (165%)
                                    </p>
                                    <span class="_client_dashboard_card_para1">Since August 2020</span>
                                    <div class="_client_market_type">
                                        <div class="_client_market_type_right">
                                            <h4>Market Type </h4>
                                            <p>Seller’s</p>
                                        </div>
                                        <div class="_client_market_type_left">
                                            <p>List your Home </p>
                                            <button type="submit" class="_client_market_type_left_link">Talk to us</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                 <div class="_client_dashboard_card">
                                    <h4 class="_client_dashboard_card_title">Equity Tracker</h4>
                                    <h4 class="_client_dashboard_card_title1">$287,345</h4>
                                    <p class="_client_dashboard_card_para">
                                      +$2,567  in last 30D
                                    </p>
                                    <span class="_client_dashboard_card_para1">Since August 2020</span>
                                    <div class="_client_market_type">
                                        <div class="_client_market_type_right">
                                            <h4>Access Cash in Home</h4>
                                            <p>$250,000</p>
                                        </div>
                                        <div class="_client_market_type_left">
                                            <button type="submit" class="_client_market_type_left_link">Access Equity</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                              <div class="_client_dashboard_card">
                                <h4 class="_client_dashboard_card_title">Rate Tracker</h4>
                                <h4 class="_client_dashboard_card_title1">$500,000</h4>
                                <span class="_client_dashboard_card_para1">Your Current Rate</span>
                                <div class="_client_market_type">
                                  <div class="_client_market_type_right">
                                    <h4>Refinance Savings</h4> 
                                    <p>$0</p>
                                  </div> 
                                  <div class="_client_market_type_left">
                                    <button type="submit" class="_client_market_type_left_link">Apply Now</button>
                                  </div>
                                </div>
                                <div class="_client_market_type">
                                  <div class="_client_market_type_right">
                                    <h4>Cash-out Savings</h4> 
                                    <p>$0</p>
                                  </div> 
                                  <div class="_client_market_type_left">
                                    <button type="submit" class="_client_market_type_left_link">Apply Now</button>
                                  </div>
                                </div>
                                <div class="_client_market_type">
                                  <div class="_client_market_type_right">
                                    <h4>Home-Equity Savings</h4> 
                                    <p>$0</p>
                                  </div> 
                                  <div class="_client_market_type_left">
                                    <button type="submit" class="_client_market_type_left_link">Apply Now</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                                <div class="_client_dashboard_card _client_dashboard_card1">
                                  <div class="_card_area">
                                    <h4 class="_alert_title">No Alerts</h4>
                                    <img src="../assets/images/Alert.png" alt="" class="_alert_img">
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
  </div>
</template>


<script>
import { mapGetters } from "vuex";

export default {
  
  middleware: "auth",
  data() {
    return {
      isActive: 0,
      msgs:[]
    };
  },
computed: {
    ...mapGetters({
              authUser:'getAuthUser'
     
    }),
  },
  methods: {
    async getLatestConversation(){
       const res = await this.callApi("get", "/conversation/getLatestConversation");
      if (res.status == 200) {
          this.msgs = res.data
      }

    }
  },

  created() {
    this.getLatestConversation()
    // console.log("on index js")
    // if (!this.$store.state.authUser) {
    //   this.$router.push("/login")
    // }
    this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
  },
  beforeCreate() {},
};
</script>
