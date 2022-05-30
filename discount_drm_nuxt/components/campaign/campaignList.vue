<template>
 <div class="_dashboard_main_wrap">
    <div class="_dashboard_main_wrap_inner">
          <div class="_dashboard_main_camnpaign_inner">
              <div class="_dashboard_main_video_inner_top">
                  <h4 class="_dashboard_main_video_inner_top_title">Campaigns</h4>
                  <!-- createCampaign -->
                  <button  @click="$router.push(`/campaigns/createCampaign`)" type="submit" class="_dashboard_main_video_inner_top_link">Add Campaign</button>
              </div>
              <div class="_dashboard_main_show_btn_grp">
                  <div class="_dashboard_main_show_delete_grp">
                      <p>Show deleted</p>
                      <label class="switch">
                          <input type="checkbox" defaultchecked="">
                          <span class="slider round">
                      </span></label>
                  </div>
                  <div class="_dashboard_main_show_delete_grp">
                      <p>Show active only</p>
                      <label class="switch">
                          <input type="checkbox" defaultchecked="">
                          <span class="slider round">
                      </span></label>
                  </div>
              </div>
              <form class="_dashboard_main_bar_form_wrap" action="#0">
                  <input placeholder="Search by campaign name" type="text" class="_dashboard_main_bar_search_input">
                  <span class="_dashboard_main_bar_search_input_ic">
                      <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="none" viewBox="0 0 13 13">
                          <path stroke="#666" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 9l2 2 .5.5m-1.167-5.833a4.667 4.667 0 11-9.334 0 4.667 4.667 0 019.334 0z"/>
                      </svg>
                  </span>
              </form>
              <div class="_dashboard_main_campaign_table">
                  <div class="_dashboard_main_campaign_top">
                      <div class="_dashboard_main_campaign_left">
                          <div class="_dashboard_main_campaign_left_btn">
                              <button type="submit">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                      <path stroke="#333" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 15l-6-6-6 6"/>
                                  </svg>
                              </button>
                          </div>
                          <div class="_dashboard_main_campaign_txt">
                              <h4>Unassigned</h4>
                          </div>
                          <div class="_dashboard_main_campaign_total">
                              <p>5 campaigns</p>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_right">
                          <button type="submit">
                              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 20 20">
                                  <path stroke="#333" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 4.166v11.667M4.167 10h11.666"/>
                              </svg>
                        </button>
                      </div>
                  </div>
                  <div class="_dashboard_main_campaign_bottom">
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt">Name</p>
                          </div>
                          <div class="_table_status">
                              <p class="_campaign_txt">STATUS</p>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt">PEOPLE</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt">MESSAGES</p>
                          </div>
                          <div class="_table_create">
                              <p class="_campaign_txt">CREATED AT</p>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt1">FreeRateUpdate</p>
                          </div>
                          <div class="_table_status">
                              <label class="switch">
                                  <input type="checkbox" defaultchecked="">
                                  <span class="slider round">
                                  </span>
                              </label>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt1">16 people</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt1">79</p>
                          </div>
                          <div class="_table_create _table_create_space">
                              <p class="_campaign_txt1">3:59 PM 21 Jan 2022</p>
                          </div>
                          <div class="_table_details">
                              <p class="_campaign_txt2">Details</p>
                              <div class="_dashboard_main_campaign_more">
                                  <button type="submit" class="_watch_more_link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="4" height="12" fill="none" viewBox="0 0 4 12">
                                      <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 2.438a.563.563 0 000-1.126m0 1.125a.563.563 0 010-1.124m0 1.125V1.312M2 6.563a.563.563 0 000-1.125m0 1.125a.563.563 0 010-1.125m0 1.125V5.438M2 10.688a.562.562 0 100-1.126m0 1.126a.562.562 0 110-1.126m0 1.126V9.562"></path>
                                    </svg>
                                  </button>
                                </div>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt1">BankRate</p>
                          </div>
                          <div class="_table_status">
                              <label class="switch">
                                  <input type="checkbox" defaultchecked="">
                                  <span class="slider round">
                                  </span>
                              </label>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt1">0 people</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt1">0</p>
                          </div>
                          <div class="_table_create _table_create_space">
                              <p class="_campaign_txt1">3:59 PM 21 Jan 2022</p>
                          </div>
                          <div class="_table_details">
                              <p class="_campaign_txt2">Details</p>
                              <div class="_dashboard_main_campaign_more">
                                  <button type="submit" class="_watch_more_link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="4" height="12" fill="none" viewBox="0 0 4 12">
                                      <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 2.438a.563.563 0 000-1.126m0 1.125a.563.563 0 010-1.124m0 1.125V1.312M2 6.563a.563.563 0 000-1.125m0 1.125a.563.563 0 010-1.125m0 1.125V5.438M2 10.688a.562.562 0 100-1.126m0 1.126a.562.562 0 110-1.126m0 1.126V9.562"></path>
                                    </svg>
                                  </button>
                                </div>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt1">LendingTree</p>
                          </div>
                          <div class="_table_status">
                              <label class="switch">
                                  <input type="checkbox" defaultchecked="">
                                  <span class="slider round">
                                  </span>
                              </label>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt1">6 people</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt1">21</p>
                          </div>
                          <div class="_table_create _table_create_space">
                              <p class="_campaign_txt1">2:38 PM 21 Jan 2022</p>
                          </div>
                          <div class="_table_details">
                              <p class="_campaign_txt2">Details</p>
                              <div class="_dashboard_main_campaign_more">
                                  <button type="submit" class="_watch_more_link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="4" height="12" fill="none" viewBox="0 0 4 12">
                                      <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 2.438a.563.563 0 000-1.126m0 1.125a.563.563 0 010-1.124m0 1.125V1.312M2 6.563a.563.563 0 000-1.125m0 1.125a.563.563 0 010-1.125m0 1.125V5.438M2 10.688a.562.562 0 100-1.126m0 1.126a.562.562 0 110-1.126m0 1.126V9.562"></path>
                                    </svg>
                                  </button>
                                </div>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt1">Pre-Approved</p>
                          </div>
                          <div class="_table_status">
                              <label class="switch">
                                  <input type="checkbox" defaultchecked="">
                                  <span class="slider round">
                                  </span>
                              </label>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt1">0 people</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt1">0</p>
                          </div>
                          <div class="_table_create _table_create_space">
                              <p class="_campaign_txt1">2:36 PM 21 Jan 2022</p>
                          </div>
                          <div class="_table_details">
                              <p class="_campaign_txt2">Deatils</p>
                              <div class="_dashboard_main_campaign_more">
                                  <button type="submit" class="_watch_more_link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="4" height="12" fill="none" viewBox="0 0 4 12">
                                      <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 2.438a.563.563 0 000-1.126m0 1.125a.563.563 0 010-1.124m0 1.125V1.312M2 6.563a.563.563 0 000-1.125m0 1.125a.563.563 0 010-1.125m0 1.125V5.438M2 10.688a.562.562 0 100-1.126m0 1.126a.562.562 0 110-1.126m0 1.126V9.562"></path>
                                    </svg>
                                  </button>
                                </div>
                          </div>
                      </div>
                      <div class="_dashboard_main_campaign_data">
                          <div class="_table_name">
                              <p class="_campaign_txt1">Free Rate Update</p>
                          </div>
                          <div class="_table_status">
                              <label class="switch">
                                  <input type="checkbox" defaultchecked="">
                                  <span class="slider round">
                                  </span>
                              </label>
                          </div>
                          <div class="_table_people">
                              <p class="_campaign_txt1">4 people</p>
                          </div>
                          <div class="_table_message">
                              <p class="_campaign_txt1">25</p>
                          </div>
                          <div class="_table_create _table_create_space">
                              <p class="_campaign_txt1">10:31 PM 18 Jan 2022</p>
                          </div>
                          <div class="_table_details">
                              <p class="_campaign_txt2">Deatils</p>
                              <div class="_dashboard_main_campaign_more">
                                  <button type="submit" class="_watch_more_link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="4" height="12" fill="none" viewBox="0 0 4 12">
                                      <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 2.438a.563.563 0 000-1.126m0 1.125a.563.563 0 010-1.124m0 1.125V1.312M2 6.563a.563.563 0 000-1.125m0 1.125a.563.563 0 010-1.125m0 1.125V5.438M2 10.688a.562.562 0 100-1.126m0 1.126a.562.562 0 110-1.126m0 1.126V9.562"></path>
                                    </svg>
                                  </button>
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
  created(){
    this.$store.commit('leftSidebar/setsidebarSelected', 'campaigns');
  }

}
</script>
