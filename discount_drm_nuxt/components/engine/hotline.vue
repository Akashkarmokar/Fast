<template>
  <div class="_dashboard_main_wrap">
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
                  <div class="_hotline_right_info_title">
                      <h4>State Hotlines</h4>
                  </div>
                  <div class="_hotline_right_info_table">
                      <div class="_hotline_right_info_table_heading">
                          <div class="_dashboard_hotline_title1">
                              <h4 class="_hotaline_table_title">States</h4>
                          </div>
                          <div class="_dashboard_hotline_title2">
                              <h4 class="_hotaline_table_title">Number</h4>
                          </div>
                          <div class="_dashboard_hotline_title3">
                              <h4 class="_hotaline_table_title">Assign</h4>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Alabama </h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Alaska   </h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Arizona</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>California</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Colorado</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Connecticut</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Delaware</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Florida</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Georgia </h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Hawaii</h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
                          </div>
                      </div>
                      <div class="_hotline_right_info_data">
                          <div class="_hotline_right_info_area">
                              <h4>Idaho </h4>
                          </div>
                          <div class="_hotline_right_info_area1">
                              <p>(760) 321 1456</p>
                          </div>
                          <div class="_hotline_right_info_area2">
                              <button type="submit">Assign Number</button>
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
