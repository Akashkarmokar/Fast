<template>
  <div>
    <div class="row">
          <div class="col-12 col-md-12 col-lg-12 col-xl-12">
          <div class="_peplDtls_r8_top">
            <div v-on:click="showDrop2 = !showDrop2" class="_peplDtls_r8_top_drop">
              <button type="submit" class="_peplDtls_r8_top_drop_link">
                <span>Status</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6"><path fill="#112032" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path></svg>
              </button>
              <div v-if="showDrop2" class="_peplDtls_r8_top_drop_menu _peplDtls_r8_top_drop_menu1">
                 <ul class="_peplDtls_r8_top_drop_menu_list">
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                      New
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                       Reaching Out
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                       Responded
                     </a>
                   </li>
                    <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                      Application
                     </a>
                   </li>
                    <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                      In Process
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                        Closed
                     </a>
                   </li>
                    <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                        No Sale
                     </a>
                   </li>
                 </ul>
               </div>
            </div>
            <div v-on:click="showDrop = !showDrop" class="_peplDtls_r8_top_drop">
              <button type="submit" class="_peplDtls_r8_top_drop_link">
                <span>Assign Campaign</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6"><path fill="#112032" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path></svg>
              </button>
               <div v-if="showDrop" class="_peplDtls_r8_top_drop_menu">
                 <ul class="_peplDtls_r8_top_drop_menu_list">
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                      Zillow
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                       Bank Rate
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                        30 Days Buyer
                     </a>
                   </li>
                    <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                     Pre-Approved
                     </a>
                   </li>
                    <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                      Shopping
                     </a>
                   </li>
                   <li class="_peplDtls_r8_top_drop_menu_item">
                     <a href="#0" class="_peplDtls_r8_top_drop_menu_link">
                        Post Close
                     </a>
                   </li>
                 </ul>
               </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
          <div class="_peplDtls_mdl_nav2">
            <ul class="_peplDtls_mdl_nav2_ul">
              <li class="_peplDtls_mdl_nav2_li" :class="tab == 'communication'? '_active' : ''" @click="tab= 'communication'">
                 Communication
              </li>
              <li class="_peplDtls_mdl_nav2_li" :class="tab == 'LeadDetails'? '_active' : ''" @click="tab= 'LeadDetails'">
                Lead Details
              </li>
              <li class="_peplDtls_mdl_nav2_li" v-if="clientInfo.loan_purpose && clientInfo.loan_purpose == 'Refinance'" :class="tab == 'CurrentLoan'? '_active' : ''" @click="tab= 'CurrentLoan'; opens_note = false">
                Current Loan
              </li>
              <li class="_peplDtls_mdl_nav2_li" :class="tab == 'NewLoan'? '_active' : ''" @click="tab= 'NewLoan'">
                 New Reinance Loan
              </li>
              <li class="_peplDtls_mdl_nav2_li"  v-if="clientInfo.loan_purpose && clientInfo.loan_purpose == 'Purchase'"  :class="tab == 'PreQualification'? '_active' : ''" @click="tab= 'PreQualification'">
                Pre-Qualification
              </li>
              <li class="_peplDtls_mdl_nav2_li"  :class="tab == 'notes'? '_active' : ''" @click="tab= 'notes'; getAllNotes()">
                Notes
              </li>
              <li class="_peplDtls_mdl_nav2_li" :class="tab == 'refinance'? '_active' : ''" @click="tab= 'refinance';" >
               New Purchase Loan
              </li>
              <li class="_peplDtls_mdl_nav2_li"  :class="tab == 'report'? '_active' : ''" @click="tab= 'report';">
               Home Report
              </li>
             </ul>
          </div>
        </div>
      </div>
      <div class="_client_details_area">
        <div class="row">
          <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
          <div class="_peplDtls_mdl">
              <div class="_peplDtls_itm_all" v-if="tab == 'LeadDetails'">
                <div class="_peplDtls_inpt_itm_all">
                  <div class="row">
                    <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          First Name
                        </p>
                        <input type="text" class="_peplDtls_mdl_inpt">
                      </div>
                    </div>
                    <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          Last Name
                        </p>
                        <input type="text" class="_peplDtls_mdl_inpt">
                      </div>
                    </div>
                    <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          Phone
                        </p>
                        <input type="number" class="_peplDtls_mdl_inpt">
                      </div>
                    </div>
                    <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          Email
                        </p>
                        <input type="email" class="_peplDtls_mdl_inpt">
                      </div>
                    </div>
                  </div>
                </div>

                <div class="_peplDtls_slct_itm_all">
                  <div class="row">
                    <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          Lead Source
                        </p>
                          <select aria-label="Select Purpose" class="_peplDtls_mdl_inpt">
                            <option selected disabled>Select Lead Source</option>
                            <option value="{1}">Today</option>
                            <option value="{2}">This Week</option>
                            <option value="{3}">This Month</option>
                            <option value="{3}">This Year</option>
                        </select>
                      </div>
                    </div>

                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                      <div class="_peplDtls_inpt_itm">
                        <p class="_peplDtls_inpt_itm_titl">
                          Lead Source
                        </p>
                          <select aria-label="Select Purpose" class="_peplDtls_mdl_inpt">
                            <option selected disabled>Select Agent</option>
                            <option value="{1}">Today</option>
                            <option value="{2}">This Week</option>
                            <option value="{3}">This Month</option>
                            <option value="{3}">This Year</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="_peplDtls_itm_all"  v-if="tab == 'CurrentLoan'">
                <div class="_peplDtls_ctgry">
                  <div class="_peplDtls_ctgry_srch">
                    <p class="_peplDtls_inpt_itm_titl">
                         Home Address
                        </p>
                    <div class="_peplDtls_ctgry_srch_main d-flex">
                        <input type="text" class="_peplDtls_mdl_inpt">
                        <button class="_peplDtls_ctgry_srch_btn">
                          Find Details
                        </button>
                    </div>
                  </div>

                  <div class="_peplDtls_ctgry_info">
                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Value
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1 _peplDtls_ctgry_info_clr">
                            $550,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                        Current Loan
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $200,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Equity
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1 _peplDtls_ctgry_info_clr">
                            $250,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                        Current Loan
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $200,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Rate
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            2.875%
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          LTV
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          55%
                        </p>
                      </li>
                    </ul>
                  </div>
                </div>

                  <div class="_peplDtls_inpt_itm_all">
                    <div class="row">
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Current Lender
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Mortgage Type
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Orginal Balance
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Current Balance
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Orginal Term
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Remaining Term
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Current Interests Rate
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Current P&I Payment
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                        <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Mo. Mortgage Insurance
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Loan Recorded Date
                          </p>
                          <input type="date" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                    </div>
                </div>
              </div>
              <div class="_peplDtls_itm_all"  v-if="tab == 'NewLoan'">
                <div class="_peplDtls_ctgry">
                  <div class="_peplDtls_ctgry_info">
                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Value
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            $550,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Loan Amount
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $200,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                            Rate
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            2.875%
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                            New Rate
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            2.875%
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Refinance Cost
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $1,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Breakeven
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          3 Months
                        </p>
                      </li>
                    </ul>

                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          No Savings
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            $345
                        </p>
                      </li>
                       <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          10 Years Savings
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                           $54,356
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Total Savings
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $54,356
                        </p>
                      </li>
                    </ul>
                      <button class="_peplDtls_ctgry_srch_btn _peplDtls_analys_btn">
                          Send Analysis
                      </button>
                  </div>
                </div>

                <div class="_peplDtls_inpt_itm_all">
                    <div class="row">
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Estimated Value
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Loan Amount
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Loan Term
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Loan Type
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Home Type
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Occupancy
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Credit Score Range
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <button class="_peplDtls_ctgry_srch_btn" style="margin-top:20px;">
                          Run Quote
                        </button>
                      </div>
                    </div>
                </div>

                <div class="_peplDtls_slctTym">
                  <p class="_peplDtls_slctTym_txt1">
                    Alerts will arrive at:
                    <span>Subscribed</span>
                  </p>
                  <div class="_peplDtls_slctTym_main d-flex">
                    <input type="text" class="_peplDtls_mdl_inpt">
                    <ul class="_peplDtls_slctTym_ul d-flex">
                      <li>AM</li>
                      <li>PM</li>
                    </ul>
                    <ul class="_peplDtls_slctTym_ul d-flex">
                      <li>Daily</li>
                      <li>Weekly</li>
                    </ul>
                  </div>
                    <button class="_peplDtls_ctgry_srch_btn _peplDtls_sbcrb_btn">
                        Subsribe
                    </button>
                    <p class="_peplDtls_slctTym_txt2">
                      View Rate Alerts Sent
                    </p>
                </div>
              </div>

              <div class="_peplDtls_itm_all"  v-if="tab == 'PreQualification'">
                <div class="_peplDtls_ctgry">
                  <div class="_peplDtls_ctgry_info">
                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Pre-Qualification
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            $550,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Comfort Amount
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $400,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                           Renting Vs Owning
                        </p>
                        <!-- <p class="_peplDtls_ctgry_info_txt1 _peplDtls_ctgry_info_clr">
                            $350,000
                        </p> -->
                        <select class="_peplDtls_ctgry_slct _peplDtls_slct_clr">
                          <option value="1">
                            $350,000
                          </option>
                            <option value="2">
                            $340,000
                          </option>
                            <option value="3">
                            $330,000
                          </option>
                            <option value="4">
                            $320,000
                          </option>
                        </select>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Waiting 1 year
                        </p>
                          <select class="_peplDtls_ctgry_slct _peplDtls_slct_clr">
                          <option value="1">
                            $350,000
                          </option>
                            <option value="2">
                            $340,000
                          </option>
                            <option value="3">
                            $330,000
                          </option>
                            <option value="4">
                            $320,000
                          </option>
                        </select>
                      </li>
                    </ul>
                    <div class="_peplDtls_ctgry_lnk_all">
                     <nuxt-link to="" class="_peplDtls_ctgry_lnk">
                       Email Letter
                     </nuxt-link>
                     <span>or</span>
                      <nuxt-link to="" class="_peplDtls_ctgry_lnk">
                       Download Letter
                     </nuxt-link>
                    </div>
                  </div>
                </div>

                <div class="_peplDtls_inpt_itm_all">
                    <div class="row">
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Annual Income
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Monthly Debts
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Down Payment
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Interest Rate
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                              Property Tax
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Homeowners Insruance
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                             Mortgage Insurance
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           HOA Dues
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Comfortable Payment
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <button class="_peplDtls_ctgry_srch_btn" style="margin-top:20px;">
                          Run Numbers
                        </button>
                      </div>
                    </div>
                </div>
              </div>
              <div class="_peplDtls_r8_cnvrstn" v-if="tab == 'communication'">
                <div class="_chat_right_middle_box">
                  <div v-for="(item, index) in all_messages" :key="index">
                      <!--Sender-->
                      <div
                          v-if="item.is_reply != 0"
                          class="_chat_middle_box_sender"
                      >
                          <div class="_chat_middle_box_msg">
                          <div class="_chat_middle_message">
                              <div class="_chat_middle_box_sender_txt">
                              <p class="_chat_middle_box_sender_txt_para">
                                  {{ item.message_data }}
                                  <sub> ({{ item.status }}) </sub>
                              </p>
                              </div>
                              <div class="_chat_middle_box_info">
                              <div class="_chat_middle_box_date">
                                  <p>{{ item.created_at |  luxon({ format: "dd/MM/yyyy" })  }}</p>
                              </div>
                              </div>
                          </div>
                          </div>
                      </div>
                      <!--Sender-->
                      <!--Reciver-->
                      <div v-else class="_chat_middle_box_reciver">
                          <div class="_chat_middle_box_reciver_area">
                          <div class="_chat_middle_message _chat_middle_message_bg">
                              <div class="_chat_middle_box_sender_txt">
                              <p class="_chat_middle_box_sender_txt_para">
                                  {{ item.message_data }}
                                  <sub> ({{ item.status }}) </sub>
                              </p>
                              </div>
                              <div class="_chat_sender_info">
                              <p>{{ item.created_at |  luxon({ format: "dd/MM/yyyy" })  }}</p>
                              </div>
                          </div>
                          </div>
                      </div>
                      <!--Reciver-->
                  </div>
                </div>
                <div class="_chat_text_field_area">
                    <div class="_chat_right_textarea"><textarea placeholder="Write your message..." v-model="conversation.message_data" class="_chat_textarea"></textarea></div>
                    <div class="_chat_right_text_area_icon">
                        <div class="_chat_right_text_icon">
                            <div class="_chat_right_text_icon1"><button type="submit">A</button></div>
                            <div class="_chat_right_text_icon1">
                                <button type="submit">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="none" viewBox="0 0 23 23">
                                        <path
                                            fill="#FFCC6C"
                                            d="M11.444 20.982c5.259 0 9.537-4.278 9.537-9.537 0-5.259-4.278-9.537-9.537-9.537-5.258 0-9.537 4.278-9.537 9.537 0 5.259 4.279 9.537 9.537 9.537zm3.331-12.398a1.425 1.425 0 110 2.849 1.425 1.425 0 010-2.849zm-4.101 6.598a3.915 3.915 0 001.54 0 3.92 3.92 0 00.716-.222c.223-.095.443-.213.648-.35.198-.136.388-.292.563-.467a3.75 3.75 0 00.467-.565l1.58 1.066a5.746 5.746 0 01-2.517 2.074c-.35.147-.711.26-1.076.334a5.766 5.766 0 01-3.377-.334 5.716 5.716 0 01-2.52-2.075l1.582-1.066c.136.202.293.392.465.563a3.814 3.814 0 001.214.82c.233.098.472.173.715.222zM8.106 8.584a1.431 1.431 0 110 2.862 1.431 1.431 0 010-2.862z"
                                        ></path>
                                    </svg>
                                </button>
                            </div>
                            <div class="_chat_right_text_icon1">
                                <button type="submit">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="23" fill="none" viewBox="0 0 24 23">
                                        <path
                                            stroke="#A7A9AD"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            stroke-width="1.431"
                                            d="M22 9.358l-8.782 9.018A5.33 5.33 0 019.4 20a5.33 5.33 0 01-3.818-1.624A5.621 5.621 0 014 14.455c0-1.47.569-2.881 1.582-3.92l7.212-7.406c.332-.354.73-.635 1.169-.829a3.52 3.52 0 012.784-.025c.442.186.844.46 1.182.808.338.347.606.76.787 1.214a3.783 3.783 0 01-.024 2.859 3.702 3.702 0 01-.807 1.2l-7.212 7.41c-.34.336-.794.522-1.266.518a1.777 1.777 0 01-1.257-.54 1.874 1.874 0 01-.528-1.292 1.875 1.875 0 01.505-1.3l7.213-7.409"
                                        ></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <div class="_chat_right_send_button">
                            <button type="submit" @click="storeMessage" :disabled="is_sending">
                              {{ is_sending? 'Sending..': 'Send'}}
                            </button>
                        </div>
                    </div>
                </div>
              </div>
              <div class="_peplDtls_r8_note" v-if="tab == 'notes'">
                <template v-if="!opens_note && notes.length >0">
                  <div class="_peplDtls_r8_note_lst"  v-for="(item, index) in notes"
                        :key="index"   @click="openNote(item, 1)">
                      <p>
                        {{item.note}}
                      </p>
                      <p class="_peplDtls_r8_note_tym">
                        {{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}
                      </p>
                  </div>
                </template>
                <div v-else-if="!opens_note" class="no_notes">
                  <p class="_peplDtls_r8_note_tym">No saved notes</p> <br><br>
                </div>

                <div class="_peplDtls_r8_note_lst _active" v-if="opens_note">
                  <span class="_peplDtls_r8_note_close" @click="opens_note = false">
                      <svg width="10" height="10" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M1 1L12.8914 12.8914" stroke="#707070" stroke-width="1.5" stroke-linecap="round"/>
                        <path d="M1 12.8916L12.8914 1.00019" stroke="#707070" stroke-width="1.5" stroke-linecap="round"/>
                      </svg>
                  </span>

                    <p class="_peplDtls_r8_note_txt">
                        this is note details
                    </p>
                      <p class="_peplDtls_r8_note_tym">
                        20 april,2022
                    </p>
                </div>


                <div class="_chat_text_field_area">
                    <div class="_chat_right_textarea"><textarea v-model="form.note" placeholder="Write a note..." class="_chat_textarea"></textarea></div>
                    <div class="_chat_right_text_area_icon">

                        <div class="_chat_right_send_button">
                            <button @click="addNotes()" :disabled="is_loading" type="submit">
                                {{ is_loading ? 'Saving..': 'Save'}}
                            </button>
                        </div>
                    </div>
                </div>
              </div>
              <div class="_peplDtls_r8_note" v-if="tab == 'refinance'">
                <div class="_peplDtls_ctgry">
                  <div class="_peplDtls_ctgry_info">
                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Value
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            $550,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Loan Amount
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $200,000
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                            Rate
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            2.875%
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Points/Credit
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          $1,000
                        </p>
                      </li>
                    </ul>

                    <ul class="_peplDtls_ctgry_info_ul">
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Mo Payment
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                            $1,985
                        </p>
                      </li>
                      <li class="_peplDtls_ctgry_info_li">
                        <p class="_peplDtls_ctgry_info_txt1">
                          Breakeven
                        </p>
                        <p class="_peplDtls_ctgry_info_txt1">
                          3 Months
                        </p>
                      </li>
                    </ul>
                      <button class="_peplDtls_ctgry_srch_btn _peplDtls_analys_btn">
                          Send Analysis
                      </button>
                  </div>
                </div>

                <div class="_peplDtls_inpt_itm_all">
                    <div class="row">
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Estimated Value
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Loan Amount
                          </p>
                          <input type="number" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Loan Term
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                            Loan Type
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Home Type
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Occupancy
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                      <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="_peplDtls_inpt_itm">
                          <p class="_peplDtls_inpt_itm_titl">
                           Credit Score Range
                          </p>
                          <input type="text" class="_peplDtls_mdl_inpt">
                        </div>
                      </div>
                       <div class="col1-12 col-md-6 col-lg-6 col-xl-6">
                        <button class="_peplDtls_ctgry_srch_btn" style="margin-top:20px;">
                          Run Quote
                        </button>
                      </div>
                    </div>
                </div>

                <div class="_peplDtls_slctTym">
                  <p class="_peplDtls_slctTym_txt1">
                    Alerts will arrive at:
                    <span>Subscribed</span>
                  </p>
                  <div class="_peplDtls_slctTym_main d-flex">
                    <input type="text" class="_peplDtls_mdl_inpt">
                    <ul class="_peplDtls_slctTym_ul d-flex">
                      <li>AM</li>
                      <li>PM</li>
                    </ul>
                    <ul class="_peplDtls_slctTym_ul d-flex">
                      <li>Daily</li>
                      <li>Weekly</li>
                    </ul>
                  </div>
                    <button class="_peplDtls_ctgry_srch_btn _peplDtls_sbcrb_btn">
                        Subsribe
                    </button>
                    <p class="_peplDtls_slctTym_txt2">
                      View Rate Alerts Sent
                    </p>
                </div>
              </div>
              <div class="_peplDtls_r8_note" v-if="tab == 'report'">
                <div  class="no_notes no_notes_report">
                  <h4 class="_peplDtls_r8_note_tym1">Comming Soon</h4>
                </div>
              </div>
        </div>
        </div>
        </div>
      </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
 data() {
    return {
      showDrop:false,
      showDrop2:false,
      opens_note:false,
      clientInfo:{},
      tab:'communication',
      opens_note:false,
      all_messages :[],
      showDrop3: false,
      showDrop1: false,
      loanPurpose:'Refinance',
      leadSource:'Bank Rate',
      form:{
        note:'',
        people_id:1
      },
      notes:[],
      is_loading:false,
      is_sending:false,
      conversation:{
        message_data:'',
        people_id:'',
      }
    };
  },
  methods:{
     async getClientInfo( ){
      const res = await this.callApi("get", `/people/getClientInfo?id=${this.$route.query.id}`);
      if(res.status == 200){
        this.clientInfo = res.data
      }
    },
     async getAllSms( ){
      const res = await this.callApi("get", `/conversation/getAllSms?id=${this.$route.query.id}`);
      if(res.status == 200){
        this.all_messages =  res.data
      }
    },
    async getAllNotes( ){
      this.tab= 'notes'
      this.opens_note = false
      const res = await this.callApi("get", `/people/getNotes?page=1&limit=10&id=${this.$route.query.id}`);
      if(res.status == 200){
        this.notes = res.data.data
      }
    },
    openNote(id, index){
      this.opens_note = true
    },
    async addNotes(){
      this.form.people_id = this.$route.query.id
      if(this.form.note.trim()== "") return this.i("Note is required")
      this.is_loading = true
      const res = await this.callApi("post", `/people/addNotes`, this.form);
      if (res.status == 200) {
        this.notes.push(res.data)
        this.form.note = ''
      }
      this.is_loading = false

    },
    async storeMessage(){
      this.conversation.people_id = this.$route.query.id
      if(this.conversation.message_data.trim()== "") return this.i("Please write something")
      this.is_sending = true
      const res = await this.callApi("post", `/conversation/sendSms`, this.conversation);
      if (res.status == 200) {
        this.all_messages.push(res.data)
        this.conversation.message_data = ''
      }
      this.is_sending = false

    },
    selectLoanPurpose(item){
      this.loanPurpose = item
      this.showDrop1= false
    },
    selectLeadSource(item){
      this.leadSource = item
      this.showDrop3= false
    },
    closePopup(){
      this.$store.commit("setPeopleDetailsRightOn", false)
    }

  },
   computed: {
    ...mapGetters({
        // peopleDetailsRightOn:'getPeopleDetailsRightOn',
      }),
  },

  created(){
      // this.$store.commit("setPeopleDetailsRightOn", true)
      this.getClientInfo()
      this.getAllSms()
      this.tab = 'communication'
  }

}
</script>
