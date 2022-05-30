<template>
  <div class="_people_details_inner_box">
      <div class="_people_details_btn">
          <button type="submit">Mortgage Details</button>
      </div>
      <div class="_details_form">
          <form class="_people_details_form">
              <div class="_people_details_inpt1 _mar_10">
                  <p class="_people_form_para">First Name</p>
                  <input class="_people_form_inpt" type="text" placeholder="">
              </div>
              <div class="_people_details_inpt2 _mar_10">
                  <p class="_people_form_para">Last Name</p>
                  <input class="_people_form_inpt" type="text" placeholder="">
              </div>
              <div class="_people_details_inpt3 _mar_10">
                  <p class="_people_form_para">Address</p>
                  <input class="_people_form_inpt" type="text" placeholder="">
              </div>
          </form>
          <form class="_people_details_form">
              <div class="_people_details_inpt1 _mar_10">
                  <p class="_people_form_para">Email</p>
                  <input class="_people_form_inpt" type="text" placeholder="">
              </div>
              <div class="_people_details_short_inpt _mar_10">
                  <p class="_people_form_para">City</p>
                  <input class="_people_form_inpt1" type="text" placeholder="">
              </div>
              <div class="_people_details_short_inpt1 _mar_10">
                  <p class="_people_form_para">Zipcode</p>
                  <input class="_people_form_inpt1" type="text" placeholder="">
              </div>
              <div class="_people_details_short_inpt2 _mar_10">
                  <p class="_people_form_para">State</p>
                  <input class="_people_form_inpt1" type="text" placeholder="">
              </div>
          </form>
          <hr class="_people_details_border">
          <!---Current Loan Details Start-->
          <div class="_cuurent_loan_details">
              <div class="_pre_qualification_details_top">
                  <h4 class="_people_details_title">Current Loan Details</h4>
              </div>
              <form class="_people_details_form">
                  <div class="_people_details_inpt1 _mar_10">
                      <p class="_people_form_para">Loan Amount</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Current Rate</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt1 _mar_10">
                      <p class="_people_form_para">Loan Term</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt2 _mar_10">
                      <p class="_people_form_para">Occupancy</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
              </form>
              <form class="_people_details_form">
                  <div class="_people_details_inpt1 _mar_10">
                      <p class="_people_form_para">Current Home Value</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Loan Type</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt1 _mar_10">
                      <p class="_people_form_para">Originated Date</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt2 _mar_10">
                      <p class="_people_form_para">Current Lender</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
              </form>
          </div>
          <!---Current Loan Details End-->
          <!--Pre-Qualification start-->
          <div class="_pre_qualification_details d-none">
              <div class="_pre_qualification_details_top">
                  <h4 class="_people_details_title">Pre-Qualification</h4>
                  <div class="_pre_qualification_top_btn">
                      <button type="submit">Email Letter</button>
                  </div>
              </div>
              <form class="_people_details_form">
                  <div class="_people_details_inpt1 _mar_10">
                      <p class="_people_form_para">Loan Amount</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_inpt2 _mar_10">
                      <p class="_people_form_para">Monthly Debts</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_inpt3 _mar_10">
                      <p class="_people_form_para">Down Payment</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Fico</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
              </form>
              <form class="_people_details_form">
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Interest Rate</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt1 _mar_10">
                      <p class="_people_form_para">Loan Type</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt2 _mar_10">
                      <p class="_people_form_para">Occupancy</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_run_btn _mar_10">
                      <button type="button">Run</button>
                  </div>
                  <div class="_people_details_amount _mar_10">
                      <p>Pre-Qualifed Amount</p>
                      <h4>$400,000</h4>
                  </div>
              </form>
          </div>
          <!--Pre-Qualification End-->
          <hr class="_people_details_border">
          <div class="_loan_requested">
              <h4 class="_people_details_title">Loan Requested</h4>
              <form class="_people_details_form">
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Loan Purpose</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt1 _mar_10">
                      <p class="_people_form_para">Credit Score</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt2 _mar_10">
                      <p class="_people_form_para">Home Value</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_inpt1 _mar_10">
                      <p class="_people_form_para">Requested Loan Amount</p>
                      <input class="_people_form_inpt" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_ipt3 _mar_10">
                      <p class="_people_form_para">Loan product</p>
                      <input class="_people_form_inpt _loan_inpt" type="text" placeholder="">
                  </div>
              </form>
              <form class="_people_details_form">
                  <div class="_people_details_short_inpt _mar_10">
                      <p class="_people_form_para">Loan Term</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt1 _mar_10">
                      <p class="_people_form_para">Occupancy</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt2 _mar_10">
                      <p class="_people_form_para">Property Type</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt3 _mar_10">
                      <p class="_people_form_para">Zipcode</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt4 _mar_10">
                      <p class="_people_form_para">State</p>
                      <input class="_people_form_inpt1" type="text" placeholder="">
                  </div>
                  <div class="_people_details_short_inpt5 _mar_10">
                      <input class="_people_form_inpt1 _color_txt_inpt" type="text" placeholder="Reprice">
                  </div>
              </form>
          </div>
      </div>
      <div class="_people_details_bottom_area">
        <div class="_details_bottom_btn_grp">
            <div class="_details_bottom_btn">
                <button class="_details_bottom_btn_link_active" type="submit">Sms</button>
            </div>
            <div class="_details_bottom_btn">
                <button type="submit">Email</button>
            </div>
        </div>
        <div class="_chat_text_field_area">
            <div class="_chat_right_textarea">
              <textarea placeholder="Write your message..." class="_chat_textarea"></textarea>
            </div>
            <div class="_chat_right_text_area_icon">
              <div class="_chat_right_text_icon">
                <div class="_chat_right_text_icon1">
                  <button type="submit">
                    A
                  </button>
                </div>
                <div class="_chat_right_text_icon1">
                  <button type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="none" viewBox="0 0 23 23">
                      <path fill="#FFCC6C" d="M11.444 20.982c5.259 0 9.537-4.278 9.537-9.537 0-5.259-4.278-9.537-9.537-9.537-5.258 0-9.537 4.278-9.537 9.537 0 5.259 4.279 9.537 9.537 9.537zm3.331-12.398a1.425 1.425 0 110 2.849 1.425 1.425 0 010-2.849zm-4.101 6.598a3.915 3.915 0 001.54 0 3.92 3.92 0 00.716-.222c.223-.095.443-.213.648-.35.198-.136.388-.292.563-.467a3.75 3.75 0 00.467-.565l1.58 1.066a5.746 5.746 0 01-2.517 2.074c-.35.147-.711.26-1.076.334a5.766 5.766 0 01-3.377-.334 5.716 5.716 0 01-2.52-2.075l1.582-1.066c.136.202.293.392.465.563a3.814 3.814 0 001.214.82c.233.098.472.173.715.222zM8.106 8.584a1.431 1.431 0 110 2.862 1.431 1.431 0 010-2.862z"></path>
                    </svg>
                  </button>
                </div>
                <div class="_chat_right_text_icon1">
                  <button type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" fill="none" viewBox="0 0 24 23">
                      <path stroke="#A7A9AD" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.431" d="M22 9.358l-8.782 9.018A5.33 5.33 0 019.4 20a5.33 5.33 0 01-3.818-1.624A5.621 5.621 0 014 14.455c0-1.47.569-2.881 1.582-3.92l7.212-7.406c.332-.354.73-.635 1.169-.829a3.52 3.52 0 012.784-.025c.442.186.844.46 1.182.808.338.347.606.76.787 1.214a3.783 3.783 0 01-.024 2.859 3.702 3.702 0 01-.807 1.2l-7.212 7.41c-.34.336-.794.522-1.266.518a1.777 1.777 0 01-1.257-.54 1.874 1.874 0 01-.528-1.292 1.875 1.875 0 01.505-1.3l7.213-7.409"></path>
                    </svg>
                  </button>
                </div>
              </div>
              <div class="_chat_right_send_button">
                <button type="submit">Send</button>
              </div>
            </div>
        </div>
      </div>
  </div>
</template>
