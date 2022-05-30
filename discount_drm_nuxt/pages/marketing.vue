<template>
    <div class="_dashboard_main_wrap _marketing_wrap">
        <div class="_dashboard_main_wrap_inner">
            <div class="_dashboard_main_top">
                <div class="_dashboard_main_top_btn">
                <ul>
                    <li>
                    <nuxt-link to="/" class="_dashboard_main_btn_link" :class="
                                        isActive == 0
                                        ? '_dashboard_main_btn_link_active'
                                        : ''
                                    ">Analytics</nuxt-link>
                    </li>
                    <li>
                    <nuxt-link to="/scorecards" class="_dashboard_main_btn_link" :class="
                                        isActive == 1
                                        ? '_dashboard_main_btn_link_active'
                                        : ''
                                    ">Scorecards</nuxt-link>
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
                    class="form-select _top_select"
                    aria-label="Default select example"
                    >
                    <option value="{1}">Today</option>
                    <option value="{2}">Yesterday</option>
                    <option value="{3}">Tomorrow</option>
                    </select>
                </div>
                <div class="_dashboard_main_top_btn _mar_lr">
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
                </div>
                </div>
            </div>
            <div class="_dashboard_main_middle_wrap">
                <div class="_dashboard_marketing_top_area">
                    <div class="_dashboard_marketing_box">
                        <p>Total Spent</p>
                        <h4>$35,456</h4>
                    </div>
                    <div class="_dashboard_marketing_box">
                        <p>Monthly Spend</p>
                        <h4>$15,345</h4>
                    </div>
                    <div class="_dashboard_marketing_box">
                        <p>CAC</p>
                        <h4>$1,545</h4>
                    </div>
                </div>
                <div class="_custom_row">
                    <div class="_dashboard_marketing_left"></div>
                    <div class="_dashboard_marketing_right">
                        <div class="_dashboard_marketing_right_top_area">
                            <div class="_dashbaord_marketing_right_top_title">
                                <h4>Marketing Mertrics</h4>
                            </div>
                             <div class="_dashbaord_marketing_right_top_btn_grp ">
                                 <p>Rank by</p>
                                 <button type="submit">Responded</button>
                             </div>
                        </div>
                        <div class="_dashboard_marketing_table">
                            <div class="_dashboard_marketing_table_heading">
                                <div class="_dashboard_marketing_heading_title">
                                    <p>Leads</p>
                                </div>
                                <div class="_dashboard_marketing_heading_title">
                                    <p>Responded</p>
                                </div>
                                <div class="_dashboard_marketing_heading_title">
                                    <p>In Process</p>
                                </div>
                                <div class="_dashboard_marketing_heading_title">
                                    <p>Closed</p>
                                </div>
                                <div class="_dashboard_marketing_heading_title">
                                    <p>Spent</p>
                                </div>
                                <div class="_dashboard_marketing_heading_title">
                                    <p>Revenue</p>
                                </div>
                            </div>
                            <div class="_marketing_table">
                                <div class="_dashboard_marketing_table_data">
                                <div class="_dashboard_marketing_data_txt">
                                    <div class="_conversational_ranking_table_data_num"><p>1</p></div>
                                </div>
                                 <div class="_dashboard_marketing_data_txt">
                                    <img src="../assets/images/marketing-logo1.png" alt="Image" class="_marketing_logo">
                                 </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678</p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$12,564</p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$45,345 <span>277%</span></p>
                                  </div>
                            </div>
                            <div class="_dashboard_marketing_table_data">
                                <div class="_dashboard_marketing_data_txt">
                                    <div class="_conversational_ranking_table_data_num"><p>2</p></div>
                                </div>
                                 <div class="_dashboard_marketing_data_txt">
                                    <img src="../assets/images/marketing-logo2.png" alt="Image" class="_marketing_logo">
                                 </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678</p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$12,564</p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$45,345 <span>277%</span></p>
                                  </div>
                            </div>
                            <div class="_dashboard_marketing_table_data">
                                <div class="_dashboard_marketing_data_txt">
                                    <div class="_conversational_ranking_table_data_num"><p>3</p></div>
                                </div>
                                 <div class="_dashboard_marketing_data_txt">
                                    <img src="../assets/images/marketing-logo3.png" alt="Image" class="_marketing_logo">
                                 </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678</p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$12,564</p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$45,345 <span>277%</span></p>
                                  </div>
                            </div>
                            <div class="_dashboard_marketing_table_data">
                                <div class="_dashboard_marketing_data_txt">
                                    <div class="_conversational_ranking_table_data_num"><p>4</p></div>
                                </div>
                                 <div class="_dashboard_marketing_data_txt">
                                    <img src="../assets/images/marketing-logo4.png" alt="Image" class="_marketing_logo">
                                 </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678</p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$12,564</p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$45,345 <span>277%</span></p>
                                  </div>
                            </div>
                            <div class="_dashboard_marketing_table_data">
                                <div class="_dashboard_marketing_data_txt">
                                    <div class="_conversational_ranking_table_data_num"><p>5</p></div>
                                </div>
                                 <div class="_dashboard_marketing_data_txt">
                                    <img src="../assets/images/marketing-logo5.png" alt="Image" class="_marketing_logo">
                                 </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678</p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">1,678 <span>15%</span></p>
                                  </div>
                                  <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$12,564</p>
                                  </div>
                                   <div class="_dashboard_marketing_data_txt">
                                      <p class="_dashboard_marketing_data_txt_para">$45,345 <span>277%</span></p>
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
export default {
  middleware: "auth",
  data() {
    return {
      isActive: 2,
    };
  },

  methods: {},

  created() {
    // this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
  },
  beforeCreate() {},
};
</script>
