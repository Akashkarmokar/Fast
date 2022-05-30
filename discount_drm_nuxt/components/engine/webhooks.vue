<template>
<div class="_dashboard_main_wrap _webhooks_main_wrap">
    <div class="_hotline_main_wrap">
          <div class="_hotline_main_custom_row">
            <div class="_hotline_side_left_info">
                <ul class="_hotline_side_left_info_list">
                    <li class="_hotline_side_left_info_item">
                        <a href="#0" class="_hotline_side_left_info_link">Security</a>
                    </li>
                    <li @click="$router.push(`/pricingEngine/hotline`)" class="_hotline_side_left_info_item">
                        <a href="#0" class="_hotline_side_left_info_link _hotline_side_left_info_link_active">Hotlines</a>
                    </li>
                    <li @click="$router.push(`/pricingEngine/webhooks`)"  class="_hotline_side_left_info_item">
                        <a href="#0" class="_hotline_side_left_info_link">Webhooks</a>
                    </li>
                </ul>
            </div>
            <hr class="_hotline_border">
            <div class="_hotline_right_info">
              <div class="_webhooks_right_info_txt">
                <div class="_hotline_right_info_title">
                  <h4>Webhooks</h4>
                </div>
                <div class="_webhooks_right_group_btn">
                  <div class="_webhooks_right_btn">
                    <button type="submit">Add new webhook</button>
                  </div>
                  <div class="_webhooks_right_btn">
                    <button type="submit">Documentation</button>
                  </div>
                </div>
              </div>
              <div class="_webhooks_right_info_table">
                <div class="_webhooks_right_info_heading">
                  <div class="_webhooks_right_title1">
                    <h4 class="_webhooks_title">NAME</h4>
                  </div>
                  <div class="_webhooks_right_title2">
                    <h4 class="_webhooks_title">CAMPAIGN</h4>
                  </div>
                  <div class="_webhooks_right_title3">
                    <h4 class="_webhooks_title">CAMPAIGN</h4>
                  </div>
                  <div class="_webhooks_right_title4">
                    <h4 class="_webhooks_title">INTEGRATION</h4>
                  </div>
                  <div class="_webhooks_right_title5">
                    <h4 class="_webhooks_title">STATUS</h4>
                  </div>
                  <div class="_webhooks_right_title6">
                    <h4 class="_webhooks_title">SUCCESS</h4>
                  </div>
                  <div class="_webhooks_right_title7">
                    <h4 class="_webhooks_title">FAILED</h4>
                  </div>
                  <div class="_webhooks_right_title8">
                    <h4 class="_webhooks_title">CREATED AT</h4>
                  </div>
                </div>
                <div class="_webhooks_right_info_data">
                  <div class="_webhooks_right_data">
                    <p>Zillow</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <div class="_webhooks_right_info">
                      <p>https://app.get</p>
                    </div>
                    <div class="_info_data_btn">
                      <button type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="none" viewBox="0 0 12 12">
                          <path stroke="#374151" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.333" d="M4 2.5H3a1 1 0 00-1 1v6a1 1 0 001 1h5a1 1 0 001-1m-5-7a1 1 0 001 1h1a1 1 0 001-1m-3 0a1 1 0 011-1h1a1 1 0 011 1m0 0h1a1 1 0 011 1V5m1 2H5m0 0l1.5-1.5M5 7l1.5 1.5"/>
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Zillow</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Zillow</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Enabled</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>1</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>0</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>3:59 PM 21 Jan 2022</p>
                  </div>
                </div>
                <div class="_webhooks_right_info_data">
                  <div class="_webhooks_right_data">
                    <p>LendingTree</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <div class="_webhooks_right_info">
                      <p>https://app.get</p>
                    </div>
                    <div class="_info_data_btn">
                      <button type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="none" viewBox="0 0 12 12">
                          <path stroke="#374151" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.333" d="M4 2.5H3a1 1 0 00-1 1v6a1 1 0 001 1h5a1 1 0 001-1m-5-7a1 1 0 001 1h1a1 1 0 001-1m-3 0a1 1 0 011-1h1a1 1 0 011 1m0 0h1a1 1 0 011 1V5m1 2H5m0 0l1.5-1.5M5 7l1.5 1.5"/>
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>LendingTree</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Mortech</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Enabled</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>67</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>0</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>3:59 PM 21 Jan 2022</p>
                  </div>
                </div>
                <div class="_webhooks_right_info_data">
                  <div class="_webhooks_right_data">
                    <p>FreeRateUpdate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <div class="_webhooks_right_info">
                      <p>https://app.get</p>
                    </div>
                    <div class="_info_data_btn">
                      <button type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="none" viewBox="0 0 12 12">
                          <path stroke="#374151" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.333" d="M4 2.5H3a1 1 0 00-1 1v6a1 1 0 001 1h5a1 1 0 001-1m-5-7a1 1 0 001 1h1a1 1 0 001-1m-3 0a1 1 0 011-1h1a1 1 0 011 1m0 0h1a1 1 0 011 1V5m1 2H5m0 0l1.5-1.5M5 7l1.5 1.5"/>
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>FreeRateUpdate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>FreeRateUpdate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Enabled</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>57</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>0</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>2:38 PM 21 Jan 2022</p>
                  </div>
                </div>
                <div class="_webhooks_right_info_data">
                  <div class="_webhooks_right_data">
                    <p>BankRate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <div class="_webhooks_right_info">
                      <p>https://app.get</p>
                    </div>
                    <div class="_info_data_btn">
                      <button type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="none" viewBox="0 0 12 12">
                          <path stroke="#374151" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.333" d="M4 2.5H3a1 1 0 00-1 1v6a1 1 0 001 1h5a1 1 0 001-1m-5-7a1 1 0 001 1h1a1 1 0 001-1m-3 0a1 1 0 011-1h1a1 1 0 011 1m0 0h1a1 1 0 011 1V5m1 2H5m0 0l1.5-1.5M5 7l1.5 1.5"/>
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>BankRate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>BankRate</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>Enabled</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>57</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>0</p>
                  </div>
                  <div class="_webhooks_right_data">
                    <p>2:36 PM 21 Jan 2022</p>
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

}
</script>
