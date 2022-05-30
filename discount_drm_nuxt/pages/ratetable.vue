<template>
  <div id="body" class="_rate_table_page _rate_table_page_new">
    <!-- Navbar -->
    <!-- <Navbar></Navbar> -->
    <!-- Rate Table -->
    <transition name="modalFade" mode="out-in">
      <!--Popup--->
      <div v-if="showLoading" class="_popup1 _overlay">
        <div class="_popup">
          <div class="_popup_inner">
            <div class="_popup_loader">
              <img src="../assets/images/loader.svg" alt="" class="_popup_loder_svg"/>
            </div>
          </div>
        </div>
      </div>
    <!--Popup--->
      <!-- Rate Table Email Alert Modal -->
      <div v-if="trackModalShow" class="_rate_table_email_alert_modal_wrap">
        <div class="_rate_table_email_alert_modal_content">
          <div class="row">
            <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12">
              <div class="_rate_table_modal_close_btn_wrap">
                <button
                  @click="trackModalClose()"
                  class="_rate_table_modal_close_btn"
                  data-cursor-hover
                >
                  <img src="../assets/images/modal-close.svg" alt="close" />
                </button>
              </div>
            </div>
            <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-12 col-sm-12">
              <div class="_rate_table_email_alert_modal_left_wrap">
                <h2 class="_rate_table_email_alert_modal_left_title">
                  Get Live Rates Daily!
                </h2>
                <ul class="_rate_table_email_alert_modal_left_list">
                  <li class="_rate_table_email_alert_modal_left_list_item">
                    <img
                      src="../assets/images/emaillisttick.svg"
                      alt="Tick"
                      class="_rate_table_email_alert_modal_left_list_tick"
                    />
                    Current Rates delivered right to your phone or email
                  </li>
                  <li class="_rate_table_email_alert_modal_left_list_item">
                    <img
                      src="../assets/images/emaillisttick.svg"
                      alt="Tick"
                      class="_rate_table_email_alert_modal_left_list_tick"
                    />
                    We shop over 50+ investors to find you the best mortgage
                  </li>
                </ul>
                <div class="_rate_table_email_alert_modal_left_img_wrap">
                  <img
                    src="../assets/images/Shadow.png"
                    alt
                    class="_rate_table_email_alert_modal_left_img"
                  />
                </div>
              </div>
            </div>
            <div class="col-xxl-7 col-xl-7 col-lg-5 col-md-12 col-sm-12">
              <div class="_rate_table_email_alert_modal_right_wrap">
                <div class="_rate_table_email_alert_modal_right_title_wrap">
                  <h2 class="_rate_table_email_alert_modal_right_title">
                    Are These Details Correct
                  </h2>
                  <button
                    class="d-none _rate_table_email_alert_modal_right_edit_btn"
                  >
                    <img src="../assets/images/editbtn.svg" alt />
                  </button>
                </div>
                <div class="_rate_table_email_alert_infos_wrap">
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Zip Code
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      {{ form.propertyZip }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Loan Purpose
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      {{ text }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Credit Score Range
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      {{ creditTypeValue }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Property Type
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      {{ propertyTypeValue }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Property Usage
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      {{ occupencyTypeValue }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Purchase Price
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      ${{ calculatedData.purchasePrice }}
                    </li>
                  </ul>
                  <ul class="_rate_table_email_alert_infos_items">
                    <li class="_rate_table_email_alert_infos_item_left">
                      Loan Payment
                    </li>
                    <li class="_rate_table_email_alert_infos_item_right">
                      ${{ calculatedData.loanAmount }} |
                      {{ calculatedData.downPaymentAmount }}%
                    </li>
                  </ul>
                </div>
                <form class="_rate_table_email_alert_form_wrap">
                  <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_rate_table_email_alert_modal_input_wrap">
                        <label
                          for="firstName"
                          class="_rate_table_email_alert_modal_label"
                          >First Name</label
                        >
                        <input
                          id="firstName"
                          ref="firstName"
                          type="text"
                          placeholder="John"
                          class="_rate_table_email_alert_modal_input"
                        />
                      </div>
                      <div class="_rate_table_email_alert_modal_input_wrap">
                        <label
                          for="email"
                          class="_rate_table_email_alert_modal_label"
                          >Email</label
                        >
                        <input
                          id="email"
                          ref="email"
                          type="email"
                          placeholder="test@email.com"
                          class="_rate_table_email_alert_modal_input"
                        />
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_rate_table_email_alert_modal_input_wrap">
                        <label
                          for="lastName"
                          class="_rate_table_email_alert_modal_label"
                          >Last Name</label
                        >
                        <input
                          id="lastName"
                          ref="lastName"
                          type="text"
                          placeholder="Cherls"
                          class="_rate_table_email_alert_modal_input"
                        />
                      </div>
                      <div class="_rate_table_email_alert_modal_input_wrap">
                        <label
                          for="number"
                          class="_rate_table_email_alert_modal_label"
                          >Cell Phone</label
                        >
                        <input
                          id="number"
                          ref="phoneNumber"
                          type="tel"
                          pattern="[0-9]{3}-[0-9]{3}-[0-9]{3}"
                          placeholder="(000) 000-000"
                          class="_rate_table_email_alert_modal_input"
                        />
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <button class="d-none _rate_table_email_alert_modal_loan">
                        Loan Officer
                      </button>
                      <div>
                        <a-select
                          class="
                            _rate_table_new_modal_drop_btn
                            _rate_table_email_alert_modal_loan
                          "
                          default-value="No One Yet!"
                          @change="handleChange"
                        >
                          <a-select-option value="Daniel Moses"
                            >Daniel Moses</a-select-option
                          >
                          <a-select-option value="Kurt Christian"
                            >Kurt Christian</a-select-option
                          >
                          <a-select-option value="Christopher Martinez"
                            >Christopher Martinez</a-select-option
                          >
                          <a-select-option value="Mark Scarlett"
                            >Mark Scarlett</a-select-option
                          >
                          <a-select-option value="Jonathan Moses"
                            >Jonathan Moses</a-select-option
                          >
                          <a-select-option value="Emmanuel Akinlosotu"
                            >Emmanuel Akinlosotu</a-select-option
                          >
                          <a-select-option value="Ashley Tengler"
                            >Ashley Tengler</a-select-option
                          >
                          <a-select-option value="Hayley Archuleta"
                            >Hayley Archuleta</a-select-option
                          >
                          <a-select-option value="Zachary Moore"
                            >Zachary Moore</a-select-option
                          >
                        </a-select>
                      </div>
                      <div class="_rate_table_email_alert_modal_time_wrap">
                        <h3 class="_rate_table_email_alert_modal_time_head">
                          Your Alerts Delivery Preferences
                        </h3>
                        <p class="_rate_table_email_alert_modal_time_subhead">
                          Alerts will arrive via email and sms
                        </p>
                        <div
                          class="
                            _rate_table_email_alert_modal_time_timecon_wrap
                          "
                        >
                          <p class="_rate_table_email_alert_modal_time_timetxt">
                            Time
                          </p>
                          <div
                            class="_rate_table_email_alert_modal_time_main_wrap"
                          >
                            <a-select
                              default-value="1"
                              style="width: 70px"
                              @change="handleChange"
                            >
                              <a-select-option value="1">1</a-select-option>
                              <a-select-option value="2">2</a-select-option>
                              <a-select-option value="3">3</a-select-option>
                              <a-select-option value="4">4</a-select-option>
                              <a-select-option value="5">5</a-select-option>
                              <a-select-option value="6">6</a-select-option>
                              <a-select-option value="7">7</a-select-option>
                              <a-select-option value="8">8</a-select-option>
                              <a-select-option value="9">9</a-select-option>
                              <a-select-option value="10">10</a-select-option>
                              <a-select-option value="11">11</a-select-option>
                              <a-select-option value="12">12</a-select-option>
                            </a-select>

                            <a-radio-group
                              v-model="value"
                              @change="onChange"
                              class="
                                _rate_table_email_alert_modal_time_ampm_wrap
                              "
                            >
                              <a-radio-button
                                value="am"
                                class="_rate_table_email_alert_modal_time_ampm"
                                >am</a-radio-button
                              >
                              <a-radio-button
                                value="pm"
                                class="_rate_table_email_alert_modal_time_ampm"
                                >pm</a-radio-button
                              >
                            </a-radio-group>

                            <a-radio-group
                              v-model="value"
                              @change="onChange"
                              class="_rate_table_email_alert_modal_time_dw_wrap"
                            >
                              <a-radio-button
                                value="daily"
                                class="_rate_table_email_alert_modal_time_dw"
                                >Daily</a-radio-button
                              >
                              <a-radio-button
                                value="weekly"
                                class="_rate_table_email_alert_modal_time_dw"
                                >Weekly</a-radio-button
                              >
                            </a-radio-group>
                          </div>
                        </div>
                      </div>
                      <div class="_rate_table_email_alert_modal_rate_check">
                        <a-checkbox
                          class="_rate_table_email_alert_modal_rate_agree_label"
                        >
                          I have read and accept the
                          <a
                            href="/privacy"
                            class="_rate_table_email_alert_modal_rate_terms"
                            >Terms & Condition & Privcy Policy</a
                          >
                        </a-checkbox>
                      </div>
                      <div
                        class="
                          _rate_table_email_alert_modal_rate_subscribe_wrap
                        "
                      >
                        <button
                          class="
                            _rate_table_email_alert_modal_rate_subscribe_btn
                          "
                        >
                          Subscribe Now!
                        </button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Rate Table Email Alert Modal -->

      <!-- Rate Table Email Quote Modal -->
      <div v-if="emailModalShow" class="_rate_table_email_quote_modal_wrap">
        <div class="_rate_table_email_quote_modal_content">
          <div class="row">
            <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12">
              <div class="_rate_table_modal_close_btn_wrap">
                <button
                  @click="emailModalToggle()"
                  class="_rate_table_modal_close_btn"
                  data-cursor-hover
                >
                  <img src="../assets/images/modal-close.svg" alt="close" />
                </button>
              </div>
            </div>
            <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-12 col-sm-12">
              <div class="_rate_table_email_quote_modal_left_wrap">
                <h2 class="_rate_table_email_quote_modal_left_title">
                  Email Your Quote!
                </h2>
                <ul class="_rate_table_email_quote_modal_left_list">
                  <li class="_rate_table_email_quote_modal_left_list_item">
                    <img
                      src="../assets/images/emaillisttick.svg"
                      alt="Tick"
                      class="_rate_table_email_quote_modal_left_list_tick"
                    />
                    Current Rates delivered right to your phone or email
                  </li>
                  <li class="_rate_table_email_quote_modal_left_list_item">
                    <img
                      src="../assets/images/emaillisttick.svg"
                      alt="Tick"
                      class="_rate_table_email_quote_modal_left_list_tick"
                    />
                    We shop over 50+ investors to find you the best mortgage
                  </li>
                </ul>
                <div class="_rate_table_email_quote_modal_left_img_wrap">
                  <img
                    src="../assets/images/Shadow.png"
                    alt
                    class="_rate_table_email_quote_modal_left_img"
                  />
                </div>
              </div>
            </div>
            <div class="col-xxl-7 col-xl-7 col-lg-5 col-md-12 col-sm-12">
              <div class="_rate_table_email_quote_modal_right_wrap">
                <div class="_rate_table_email_quote_modal_right_title_wrap">
                  <h2 class="_rate_table_email_quote_modal_right_title">
                    Enter Some Details
                  </h2>
                  <!-- <button class="_rate_table_email_quote_modal_right_edit_btn"><img src="../../assets/images/editbtn.svg" alt=""></button> -->
                </div>
                <form class="_rate_table_email_quote_form_wrap">
                  <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_rate_table_email_quote_modal_input_wrap">
                        <label
                          for="firstName"
                          class="_rate_table_email_quote_modal_label"
                          >First Name</label
                        >
                        <input
                          id="firstName"
                          ref="firstName"
                          type="text"
                          placeholder="John"
                          class="_rate_table_email_quote_modal_input"
                        />
                      </div>
                      <div class="_rate_table_email_quote_modal_input_wrap">
                        <label
                          for="email"
                          class="_rate_table_email_quote_modal_label"
                          >Email</label
                        >
                        <input
                          id="email"
                          ref="email"
                          type="email"
                          placeholder="test@email.com"
                          class="_rate_table_email_quote_modal_input"
                        />
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_rate_table_email_quote_modal_input_wrap">
                        <label
                          for="lastName"
                          class="_rate_table_email_quote_modal_label"
                          >Last Name</label
                        >
                        <input
                          id="lastName"
                          ref="lastName"
                          type="text"
                          placeholder="Cherls"
                          class="_rate_table_email_quote_modal_input"
                        />
                      </div>
                      <div class="_rate_table_email_quote_modal_input_wrap">
                        <label
                          for="number"
                          class="_rate_table_email_quote_modal_label"
                          >Cell Phone</label
                        >
                        <input
                          id="number"
                          ref="phoneNumber"
                          type="tel"
                          pattern="[0-9]{3}-[0-9]{3}-[0-9]{3}"
                          placeholder="(000) 000-000"
                          class="_rate_table_email_quote_modal_input"
                        />
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <button class="d-none _rate_table_email_quote_modal_loan">
                        Loan Officer
                      </button>
                      <div>
                        <a-select
                          class="
                            _rate_table_new_modal_drop_btn
                            _rate_table_email_alert_modal_loan
                          "
                          default-value="No One Yet!"
                          @change="handleChange"
                        >
                          <a-select-option value="Daniel Moses"
                            >Daniel Moses</a-select-option
                          >
                          <a-select-option value="Kurt Christian"
                            >Kurt Christian</a-select-option
                          >
                          <a-select-option value="Christopher Martinez"
                            >Christopher Martinez</a-select-option
                          >
                          <a-select-option value="Mark Scarlett"
                            >Mark Scarlett</a-select-option
                          >
                          <a-select-option value="Jonathan Moses"
                            >Jonathan Moses</a-select-option
                          >
                          <a-select-option value="Emmanuel Akinlosotu"
                            >Emmanuel Akinlosotu</a-select-option
                          >
                          <a-select-option value="Ashley Tengler"
                            >Ashley Tengler</a-select-option
                          >
                          <a-select-option value="Hayley Archuleta"
                            >Hayley Archuleta</a-select-option
                          >
                          <a-select-option value="Zachary Moore"
                            >Zachary Moore</a-select-option
                          >
                        </a-select>
                      </div>

                      <div class="_rate_table_email_quote_modal_rate_wrap">
                        <p class="_rate_table_email_quote_modal_rate_txt">
                          Subscribe to Rate Tracking?
                        </p>
                        <div class="_rate_table_email_quote_modal_rate_toggle">
                          <span
                            @click="
                              isSlideClicked();
                              trackModalToggle();
                            "
                            :class="
                              isSlideClick
                                ? '_rate_table_email_quote_modal_rate_slide_active'
                                : ''
                            "
                            class="_rate_table_email_quote_modal_rate_slide"
                            data-cursor-hover
                          >
                            <span
                              class="
                                _rate_table_email_quote_modal_rate_slide_inner
                              "
                              >{{
                                !isSlideClick ? isSlideOff : isSlideOn
                              }}</span
                            >
                          </span>
                        </div>
                      </div>
                      <div class="_rate_table_email_quote_modal_rate_check">
                        <a-checkbox
                          class="_rate_table_email_quote_modal_rate_agree_label"
                        >
                          I have read and accept the
                          <a
                            href="/privacy"
                            class="_rate_table_email_quote_modal_rate_terms"
                            >Terms & Condition & Privcy Policy</a
                          >
                        </a-checkbox>
                      </div>
                      <div
                        class="
                          _rate_table_email_quote_modal_rate_subscribe_wrap
                        "
                      >
                        <button
                          class="
                            _rate_table_email_quote_modal_rate_subscribe_btn
                          "
                        >
                          Email Quote
                        </button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Rate Table Email Quote Modal -->

      <!-- Rate Table Email Modal -->
      <!-- <div v-if="emailModalShow" class="_rate_table_email_modal_wrap">
                <div class="_rate_table_email_modal_content">
                    <div class="_rate_table_email_modal_header">
                        <div class="_rate_table_modal_close_btn_wrap">
                            <button @click="emailModalToggle()" class="_rate_table_modal_close_btn" data-cursor-hover>
                                <img src="../../assets/images/modal-close.svg" alt="close">
                            </button>
                        </div>
                        <div class="_rate_table_email_modal_header_txt">
                            <h3 class="_rate_table_email_modal_title">Instant <span class="_rate_table_email_modal_title_blue">Quote</span></h3>
                            <p class="_rate_table_email_modal_para">Where should we send this quote?</p>
                        </div>
                    </div>
                    <div class="_rate_table_email_modal_body">
                        <form class="_rate_table_email_modal_form_wrap">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <label for="firstName" class="_rate_table_email_modal_label">First Name</label>
                                            <input id="firstName" ref="firstName" type="text" placeholder="John" class="_rate_table_email_modal_input">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <label for="lastName" class="_rate_table_email_modal_label">Last Name</label>
                                            <input id="lastName" ref="lastName" type="text" placeholder="Cherls" class="_rate_table_email_modal_input">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <label for="number" class="_rate_table_email_modal_label">Number</label>
                                            <input id="number" ref="phoneNumber" type="number" placeholder="(000) 000-000" class="_rate_table_email_modal_input">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <label for="email" class="_rate_table_email_modal_label">Email</label>
                                            <input id="email" ref="email" type="email" placeholder="test@email.com" class="_rate_table_email_modal_input">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <div class="_rate_table_left_content_check">
                                                <p class="_rate_table_left_content_check_txt">
                                                    Subscribe to rate tracking
                                                </p>
                                                <div class="_rate_table_left_toggle">
                                                    <span @click="isSlideClicked();trackModalToggle();getDetails()" :class="(isSlideClick)?'_home_rate_content_left_year_slide_active':''" class="_home_rate_content_left_year_slide " data-cursor-hover>
                                                        <span class="_home_rate_content_left_year_slide_inner">{{ !isSlideClick?isSlideOff:isSlideOn}}</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="_rate_table_email_modal_input_wrap">
                                            <div class="_rate_table_email_modal_btn_wrap">
                                                <button type="button" @click="thankModalToggle()" class="_rate_table_email_modal_btn" data-cursor-hover>
                                                    Send quote
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </form>
                    </div>
                    <div class="_rate_table_email_modal_footer">
                        <div class="_rate_table_email_modal_footer_txt">
                            <p class="_rate_table_email_modal_footer_para">
                                By click “Send Quote” you agree<br>
                                to be contacted by us
                            </p>
                        </div>
                    </div>
                </div>
      </div>-->
      <!-- Rate Table Email Modal -->
    </transition>
    <transition name="modalFade" mode="out-in">
      <!-- Rate Table Thank Modal -->
      <div
        v-if="thankModalShow"
        class="_rate_table_email_modal_wrap _rate_table_modal_wrap"
      >
        <div class="_rate_table_email_modal_content _rate_table_modal_content">
          <div class="_rate_table_email_modal_header _rate_table_modal_header">
            <div class="_rate_table_modal_close_btn_wrap">
              <button
                @click="thankModalClose()"
                class="_rate_table_modal_close_btn"
                data-cursor-hover
              >
                <img src="../assets/images/modal-close.svg" alt="close" />
              </button>
            </div>
          </div>
          <div class="_rate_table_thank_modal_body _rate_table_modal_body">
            <div class="_rate_table_thank_modal_txt">
              <h3 class="_rate_table_thank_modal_title">Thank you !</h3>
              <p class="_rate_table_thank_modal_para">
                Your Quote is on the way!
              </p>
            </div>
          </div>
          <div
            class="_rate_table_email_modal_footer _rate_table_modal_footer"
          ></div>
        </div>
      </div>
      <!-- Rate Table Thank Modal -->
    </transition>
    <transition name="modalFade" mode="out-in">
      <!-- Rate Table Thank Modal -->
      <div class="_rate_table_email_modal_wrap _rate_table_modal_wrap d-none">
        <div class="_rate_table_track_modal_content _rate_table_modal_content">
          <div class="_rate_table_track_modal_header _rate_table_modal_header">
            <div class="_rate_table_modal_close_btn_wrap">
              <button
                @click="trackModalClose()"
                class="_rate_table_modal_close_btn"
                data-cursor-hover
              >
                <img src="../assets/images/modal-close.svg" alt="close" />
              </button>
            </div>
            <div class="_rate_table_track_modal_header_txt">
              <h3 class="_rate_table_track_modal_title _rate_table_modal_title">
                Rate
                <span class="_rate_table_modal_title_blue">Tracking</span>
              </h3>
            </div>
          </div>
          <div class="_rate_table_track_modal_body _rate_table_modal_body">
            <div class="_rate_table_track_modal_body_top">
              <div class="_rate_table_track_modal_body_top_inner">
                <div class="row">
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">
                        Mortgage Type
                      </h5>
                      <p class="_rate_table_track_content_val">{{ text }}</p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">
                        Credit Score
                      </h5>
                      <p class="_rate_table_track_content_val">
                        {{ creditTypeValue }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">
                        Property Type
                      </h5>
                      <p class="_rate_table_track_content_val">
                        {{ propertyTypeValue }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">
                        Estimated home value
                      </h5>
                      <p class="_rate_table_track_content_val">
                        ${{ calculatedData.purchasePrice }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">
                        Loan Amount
                      </h5>
                      <p class="_rate_table_track_content_val">
                        ${{ calculatedData.loanAmount }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">Loan Term</h5>
                      <p class="_rate_table_track_content_val">
                        {{ loanTypeValue }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">Occupancy</h5>
                      <p class="_rate_table_track_content_val">
                        {{ occupencyTypeValue }}
                      </p>
                    </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                    <div class="_rate_table_track_content">
                      <h5 class="_rate_table_track_content_name">Zip code</h5>
                      <p class="_rate_table_track_content_val">
                        {{ form.propertyZip }}
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="_rate_table_thank_modal_body_mid">
              <form class="_rate_table_email_modal_form_wrap">
                <div class="row">
                  <div class="col-6">
                    <div class="_rate_table_email_modal_input_wrap">
                      <label
                        for="firstName"
                        class="_rate_table_email_modal_label"
                        >First Name</label
                      >
                      <input
                        id="firstName"
                        type="text"
                        :value="firstName"
                        placeholder="John"
                        class="_rate_table_email_modal_input"
                      />
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="_rate_table_email_modal_input_wrap">
                      <label
                        for="lastName"
                        class="_rate_table_email_modal_label"
                        >Last Name</label
                      >
                      <input
                        id="lastName"
                        type="text"
                        :value="lastName"
                        placeholder="Cherls"
                        class="_rate_table_email_modal_input"
                      />
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="_rate_table_email_modal_input_wrap">
                      <label for="email" class="_rate_table_email_modal_label"
                        >Email</label
                      >
                      <input
                        id="email"
                        type="email"
                        :value="email"
                        placeholder="test@email.com"
                        class="_rate_table_email_modal_input"
                      />
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="_rate_table_email_modal_input_wrap">
                      <label for="number" class="_rate_table_email_modal_label"
                        >Phone</label
                      >
                      <input
                        id="number"
                        type="number"
                        :value="phoneNumber"
                        placeholder="(000) 000-000"
                        class="_rate_table_email_modal_input"
                      />
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <div class="_rate_table_thank_modal_body_bottom">
              <form
                action="#0"
                class="_rate_table_thank_modal_body_bottom_form"
              >
                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="_rate_table_track_modal_check_list_wrap">
                      <h4 class="_rate_table_track_modal_check_list_name">
                        Alert Frequency
                      </h4>
                      <ul class="_rate_table_track_modal_check_list_ul">
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Daily
                        </li>
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Weekly
                        </li>
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Monthly
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="_rate_table_track_modal_check_list_wrap">
                      <h4 class="_rate_table_track_modal_check_list_name">
                        Communication Preference
                      </h4>
                      <ul class="_rate_table_track_modal_check_list_ul">
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Text
                        </li>
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Email
                        </li>
                        <li class="_rate_table_track_modal_check_list_li">
                          <span class="_rate_table_track_modal_check">
                            <a-checkbox @change="onChange"></a-checkbox>
                          </span>
                          Both
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="_rate_table_track_modal_footer _rate_table_modal_footer">
            <div
              class="
                _rate_table_email_modal_btn_wrap
                _rate_table_track_modal_btn_wrap
              "
            >
              <button
                type="button"
                @click="thankModalToggle()"
                class="_rate_table_email_modal_btn"
                data-cursor-hover
              >
                Create Alert
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- Rate Table Thank Modal -->
    </transition>
    <transition name="modalFade" mode="out-in">
      <!-- Rate Table Compare Modal -->
      <div
        v-if="compareModalShow"
        class="_rate_table_compare_modal_wrap _rate_table_modal_wrap"
      >
        <div
          class="_rate_table_compare_modal_content _rate_table_modal_content"
        >
          <div
            class="_rate_table_compare_modal_header _rate_table_modal_header"
          >
            <div class="_rate_table_modal_close_btn_wrap">
              <button
                @click="compareModalClose()"
                class="_rate_table_modal_close_btn"
                data-cursor-hover
              >
                <img src="../assets/images/modal-close.svg" alt="close" />
              </button>
            </div>
            <div
              class="
                _rate_table_track_modal_header_txt
                _rate_table_compare_modal_header_txt
              "
            >
              <h3
                class="
                  _rate_table_track_modal_title
                  _rate_table_compare_modal_header_title
                  _rate_table_modal_title
                "
              >
                Purchase
                <span class="_rate_table_modal_title_blue">Compare</span>
              </h3>
            </div>
          </div>
          <div class="_rate_table_compare_modal_body _rate_table_modal_body">
            <form action="#0" class="_rate_table_compare_modal_body_form">
              <div class="_rate_table_compare_modal_body_content_wrap">
                <div class="row">
                  <div class="col-12 mx-auto">
                    <div class="_rate_table_compare_modal_body_content">
                      <h5 class="_rate_table_compare_modal_body_content_title">
                        Competitors rate
                      </h5>
                      <div class="_rate_table_compare_modal_body_content_drop">
                        <div
                          class="
                            _rate_loan_dropdown
                            _rate_credit_dropdown
                            _rate_compare_drop
                          "
                          @click="changedropRateShow()"
                        >
                          <!-- <p class="ant-dropdown-link _rate_loan_dropdown_txt _rate_credit_dropdown_txt" @click="e => e.preventDefault()">
                                                        {{compareRate}} <a-icon type="down" />
                                                    </p>
                                                    <ul>
                                                        <li @click="compareRate('1.99%',0)" class="_rate_drop_list_item" key="0" data-cursor-hover>
                                                            1.99%
                                                        </li>
                                                        <li @click="compareRate('3.99%',1)" class="_rate_drop_list_item" key="1" data-cursor-hover>
                                                            3.99%
                                                        </li>
                                                        <li @click="compareRate('4.99%',2)" class="_rate_drop_list_item" key="2" data-cursor-hover>
                                                            4.99%
                                                        </li>
                          </ul>-->
                          <p class="_rate_table_compare_drop_title">
                            {{ purchaseCompare.compareRate }}
                          </p>
                          <div class="_down_arrow">
                            <img
                              src="../assets/images/down-arrow.svg"
                              alt="Image"
                              class="_down_arrow_img"
                            />
                          </div>
                          <div
                            v-if="dropRateShow"
                            class="_rate_table_compare_modal_dropdown_area"
                          >
                            <ul class="_rate_table_compare_modal_dropdown_ul">
                              <li
                                @click="changeCompareRate('1.99%', 0)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                1.99%
                              </li>
                              <li
                                @click="changeCompareRate('2.99%', 1)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2.99%
                              </li>
                              <li
                                @click="changeCompareRate('3.99%', 2)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                3.99%
                              </li>
                              <li
                                @click="changeCompareRate('4.99%', 3)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                4.99%
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mx-auto">
                    <div class="_rate_table_compare_modal_body_content">
                      <h5 class="_rate_table_compare_modal_body_content_title">
                        Points or credit
                      </h5>
                      <div class="_rate_table_compare_modal_body_content_drop">
                        <div
                          class="
                            _rate_loan_dropdown
                            _rate_credit_dropdown
                            _rate_compare_drop
                          "
                          @click="changedropPointShow()"
                        >
                          <!-- <p class="ant-dropdown-link _rate_loan_dropdown_txt _rate_credit_dropdown_txt" @click="e => e.preventDefault()">
                                                        {{compareRate}} <a-icon type="down" />
                                                    </p>
                                                    <ul>
                                                        <li @click="compareRate('1.99%',0)" class="_rate_drop_list_item" key="0" data-cursor-hover>
                                                            1.99%
                                                        </li>
                                                        <li @click="compareRate('3.99%',1)" class="_rate_drop_list_item" key="1" data-cursor-hover>
                                                            3.99%
                                                        </li>
                                                        <li @click="compareRate('4.99%',2)" class="_rate_drop_list_item" key="2" data-cursor-hover>
                                                            4.99%
                                                        </li>
                          </ul>-->
                          <p class="_rate_table_compare_drop_title">
                            {{ purchaseCompare.comparePoint }}
                          </p>
                          <div class="_down_arrow">
                            <img
                              src="../assets/images/down-arrow.svg"
                              alt="Image"
                              class="_down_arrow_img"
                            />
                          </div>
                          <div
                            v-if="dropPointShow"
                            class="_rate_table_compare_modal_dropdown_area"
                          >
                            <ul class="_rate_table_compare_modal_dropdown_ul">
                              <li
                                @click="changeComparePoint('0', 0)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                0
                              </li>
                              <li
                                @click="changeComparePoint('1', 1)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                1
                              </li>
                              <li
                                @click="changeComparePoint('2', 2)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2
                              </li>
                              <li
                                @click="changeComparePoint('3', 3)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                3
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mx-auto">
                    <div class="_rate_table_compare_modal_body_content">
                      <h5 class="_rate_table_compare_modal_body_content_title">
                        Lenders fees
                      </h5>
                      <div class="_rate_table_compare_modal_body_input_wrap">
                        <input
                          @keyup="lenderFeesInput()"
                          v-model="purchaseCompare.compareLenderFees"
                          type="text"
                          class="_rate_table_compare_modal_body_input"
                        />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div
            class="_rate_table_compare_modal_footer _rate_table_modal_footer"
          >
            <div
              class="
                _rate_table_compare_modal_btn_wrap
                _rate_table_track_modal_btn_wrap
              "
            >
              <button
                type="button"
                @click="$router.push('/compare')"
                class="_rate_table_email_modal_btn"
                data-cursor-hover
              >
                Compare Offer
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- Rate Table Compare Modal -->
    </transition>
    <transition name="modalFade" mode="out-in">
      <!-- Rate Table Thank Modal -->
      <div
        v-if="refinanceModalShow"
        class="_rate_table_refinance_modal_wrap _rate_table_modal_wrap"
      >
        <div
          class="_rate_table_refinance_modal_content _rate_table_modal_content"
        >
          <div
            class="_rate_table_refinance_modal_header _rate_table_modal_header"
          >
            <div class="_rate_table_modal_close_btn_wrap">
              <button
                @click="refinanceModalClose()"
                class="_rate_table_modal_close_btn"
                data-cursor-hover
              >
                <img src="../assets/images/modal-close.svg" alt="close" />
              </button>
            </div>
            <div
              class="
                _rate_table_track_modal_header_txt
                _rate_table_refinance_modal_header_txt
              "
            >
              <h3
                class="
                  _rate_table_track_modal_title
                  _rate_table_refinance_modal_header_title
                  _rate_table_modal_title
                "
              >
                Refinance
                <span class="_rate_table_modal_title_blue">Analysis</span>
              </h3>
            </div>
          </div>
          <div class="_rate_table_refinance_modal_body _rate_table_modal_body">
            <form action="#0" class="_rate_table_refinance_modal_body_form">
              <div class="_rate_table_refinence_modal_body_content_wrap">
                <div class="row">
                  <div class="col-12 mx-auto">
                    <div
                      class="
                        _rate_table_compare_modal_body_content
                        _rate_table_refinance_modal_body_content
                      "
                    >
                      <h5
                        class="
                          _rate_table_compare_modal_body_content_title
                          _rate_table_refinence_modal_body_content_title
                        "
                      >
                        Home address
                      </h5>
                      <div
                        class="
                          _rate_table_compare_modal_body_input_wrap
                          _rate_table_refinance_modal_body_input_wrap
                        "
                      >
                        <input
                          type="text"
                          class="
                            _rate_table_compare_modal_body_input
                            _rate_table_refinance_modal_body_input
                          "
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mx-auto">
                    <div class="_rate_table_compare_modal_body_content">
                      <h5 class="_rate_table_compare_modal_body_content_title">
                        Competitors rate
                      </h5>
                      <div class="_rate_table_compare_modal_body_content_drop">
                        <div
                          class="
                            _rate_loan_dropdown
                            _rate_credit_dropdown
                            _rate_compare_drop
                          "
                          @click="changedropCurrentRateShow()"
                        >
                          <p class="_rate_table_compare_drop_title">
                            {{ refinanceAnalys.currentRate }}
                          </p>
                          <div class="_down_arrow">
                            <img
                              src="../assets/images/down-arrow.svg"
                              alt="Image"
                              class="_down_arrow_img"
                            />
                          </div>
                          <div
                            v-if="dropCurrentRateShow"
                            class="_rate_table_compare_modal_dropdown_area"
                          >
                            <ul class="_rate_table_compare_modal_dropdown_ul">
                              <li
                                @click="changeCurrentRate('1.99%', 0)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                1.99%
                              </li>
                              <li
                                @click="changeCurrentRate('2.99%', 1)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2.99%
                              </li>
                              <li
                                @click="changeCurrentRate('3.99%', 2)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                3.99%
                              </li>
                              <li
                                @click="changeCurrentRate('4.99%', 3)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                4.99%
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="_rate_table_compare_modal_body_content">
                      <h5 class="_rate_table_compare_modal_body_content_title">
                        Original loan date
                      </h5>
                      <div class="_rate_table_compare_modal_body_content_drop">
                        <div
                          class="
                            _rate_loan_dropdown
                            _rate_credit_dropdown
                            _rate_compare_drop
                          "
                          @click="changedropLoanDateShow()"
                        >
                          <p class="_rate_table_compare_drop_title">
                            {{ refinanceAnalys.loanDate }}
                          </p>
                          <div class="_down_arrow">
                            <img
                              src="../assets/images/down-arrow.svg"
                              alt="Image"
                              class="_down_arrow_img"
                            />
                          </div>
                          <div
                            v-if="dropLoanDateShow"
                            class="_rate_table_compare_modal_dropdown_area"
                          >
                            <ul class="_rate_table_compare_modal_dropdown_ul">
                              <li
                                @click="changeLoanDate('2015', 0)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2015
                              </li>
                              <li
                                @click="changeLoanDate('2016', 1)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2016
                              </li>
                              <li
                                @click="changeLoanDate('2017', 2)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2017
                              </li>
                              <li
                                @click="changeLoanDate('2018', 3)"
                                class="_rate_table_compare_modal_dropdown_li"
                              >
                                2018
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-6">
                    <div
                      class="
                        _rate_table_compare_modal_body_content
                        _rate_table_refinance_modal_body_content
                      "
                    >
                      <h5
                        class="
                          _rate_table_compare_modal_body_content_title
                          _rate_table_refinence_modal_body_content_title
                        "
                      >
                        Original loan term
                      </h5>
                      <div
                        class="
                          _rate_table_compare_modal_body_input_wrap
                          _rate_table_refinance_modal_body_input_wrap
                        "
                      >
                        <input
                          type="text"
                          class="
                            _rate_table_compare_modal_body_input
                            _rate_table_refinance_modal_body_input
                          "
                          placeholder="15 years"
                        />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div
            class="_rate_table_refinance_modal_footer _rate_table_modal_footer"
          >
            <div
              class="
                _rate_table_refinance_modal_btn_wrap
                _rate_table_track_modal_btn_wrap
              "
            >
              <button
                type="button"
                @click="$router.push('/compare')"
                class="
                  _rate_table_email_modal_btn _rate_table_refinance_modal_btn
                "
                data-cursor-hover
              >
                Find my savings
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- Rate Table Thank Modal -->
    </transition>
    <!-- Rate Table -->
    <div class="_rate_table_wrapper">
      <div class="_rate_table_wrap">
        <div class="container">
          <div class="row">
            <div class="col-xl-12 col-lg-4 col-md-12 col-sm-12 ms-auto d-none">
              <div class="_rate_table_left_wrap">
                <div class="row">
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_txt">
                          <h3 class="_rate_table_left_content_title">
                            Mortgage type
                            <AButton>Test</AButton>
                          </h3>
                        </div>
                        <div class="_rate_table_left_content_item">
                          <ul class="_rate_table_content_item_ul">
                            <li
                              @click="changeActive('Purchase', 0)"
                              :class="
                                isActive == 0
                                  ? '_rate_table_item_li_active'
                                  : ''
                              "
                              class="_rate_table_content_item_li"
                            >
                              Purchase
                            </li>
                            <li
                              @click="changeActive('Refinance', 1)"
                              :class="
                                isActive == 1
                                  ? '_rate_table_item_li_active'
                                  : ''
                              "
                              class="_rate_table_content_item_li"
                            >
                              Refinance
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div
                    v-if="this.text == 'Refinance'"
                    class="col-xl-12 col-lg-12 col-md-12"
                  >
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_check">
                          <p class="_rate_table_left_content_check_txt">
                            Cash-Out
                          </p>
                          <div
                            class="
                              _rate_table_left_check
                              _rate_table_left_toggle_wrap
                            "
                          >
                            <!-- <a-checkbox @change="refinanceOnChange">
                            </a-checkbox>-->
                            <span
                              @click="refinanceOnChange()"
                              :class="
                                form.loanpurpose == 2
                                  ? '_rate_table_left_toggled'
                                  : ''
                              "
                              class="_rate_table_left_toggle"
                            >
                              <span
                                v-if="form.loanpurpose == 1"
                                class="_rate_table_left_toggle_ball"
                                >No</span
                              >
                              <span
                                v-else
                                class="
                                  _rate_table_left_toggle_ball_on
                                  _rate_table_left_toggle_ball
                                "
                                >Yes</span
                              >
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="_rate_table_left_content">
                                            <div class="_rate_table_left_content_inner">
                                                <div class="_rate_table_left_content_check">
                                                    <p class="_rate_table_left_content_check_txt">
                                                        Subscribe to rate tracking
                                                    </p>
                                                    <div class="_rate_table_left_toggle">
                                                        <span @click="isSlideClicked()" :class="(isSlideClick)?'_home_rate_content_left_year_slide_active':''" class="_home_rate_content_left_year_slide " data-cursor-hover>
                                                            <span class="_home_rate_content_left_year_slide_inner"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                  </div>-->
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_txt">
                          <h3 class="_rate_table_left_content_title">
                            Postal Code
                          </h3>
                        </div>
                        <div class="_rate_table_left_content_item">
                          <input
                            :class="
                              form.propertyZip.length != 0 ? '_hasInput' : ''
                            "
                            @keyup="onChangeZip"
                            class="_rate_dscrptn_txt2 _input1 _rate_input"
                            v-model="form.propertyZip"
                            type="text"
                            placeholder="00000"
                            maxlength="5"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_txt">
                          <h3 class="_rate_table_left_content_title">
                            Credit score rating
                          </h3>
                        </div>
                        <div class="_rate_table_left_content_item">
                          <!-- <a-dropdown
                            class="_rate_loan_dropdown _rate_credit_dropdown"
                            :trigger="['click']"
                          >
                            <a
                              :class="creditHasInput ? '_hasInput' : ''"
                              class="
                                ant-dropdown-link
                                _rate_loan_dropdown_txt
                                _rate_credit_dropdown_txt
                              "
                              @click="(e) => e.preventDefault()"
                            >
                              {{ creditTypeValue }}
                              <a-icon type="down" />
                            </a>
                            <a-menu slot="overlay">
                              <a-menu-item
                                @click="changeCredit('760 +', 760)"
                                class="_rate_drop_list_item"
                                key="0"
                                data-cursor-hover
                                >760 +</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('740-750', 740)"
                                class="_rate_drop_list_item"
                                key="1"
                                data-cursor-hover
                                >740-759</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('720-739', 720)"
                                class="_rate_drop_list_item"
                                key="2"
                                data-cursor-hover
                                >720-739</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('700-719', 700)"
                                class="_rate_drop_list_item"
                                key="2"
                                data-cursor-hover
                                >700-719</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('680-699', 680)"
                                class="_rate_drop_list_item"
                                key="3"
                                data-cursor-hover
                                >680-699</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('660-679', 660)"
                                class="_rate_drop_list_item"
                                key="3"
                                data-cursor-hover
                                >660-679</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('640-659', 640)"
                                class="_rate_drop_list_item"
                                key="3"
                                data-cursor-hover
                                >640-659</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('620-639', 620)"
                                class="_rate_drop_list_item"
                                key="3"
                                data-cursor-hover
                                >620-639</a-menu-item
                              >
                              <a-menu-item
                                @click="changeCredit('580-619', 580)"
                                class="_rate_drop_list_item"
                                key="3"
                                data-cursor-hover
                                >580-619</a-menu-item
                              >
                            </a-menu>
                          </a-dropdown> -->
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div
                          class="
                            _rate_table_left_content_txt
                            _rate_table_left_content_txt_flex
                          "
                        >
                          <h3
                            v-if="this.text != 'Refinance'"
                            class="_rate_table_left_content_title"
                          >
                            {{ (purchaseType = "Purchase Price") }}
                          </h3>
                          <h3 v-else class="_rate_table_left_content_title">
                            {{ (purchaseType = "Home Value") }}
                          </h3>
                          <!-- <a class="_rate_table_left_hyperlink" href="#0" data-cursor-hover>Check Home Value</a> -->
                        </div>
                        <div
                          class="
                            _rate_table_left_content_item _rate_input_dollar_ic
                          "
                        >
                          <input
                            v-if="this.text != 'Refinance'"
                            :class="
                              calculatedData.purchasePrice.length != 1 &&
                              calculatedData.purchasePrice.length != 0
                                ? '_hasInput'
                                : ''
                            "
                            id="purchase"
                            class="
                              _rate_dscrptn_txt2
                              _input1
                              _rate_input _rate_input_dollar_txt
                            "
                            type="text"
                            @keyup="calculate()"
                            v-model="calculatedData.purchasePrice"
                          />
                          <input
                            v-else
                            :class="
                              calculatedData.purchasePrice.length != 1 &&
                              calculatedData.purchasePrice.length != 0
                                ? '_hasInput'
                                : ''
                            "
                            id="purchase"
                            class="
                              _rate_dscrptn_txt2
                              _input1
                              _rate_input
                              _rate_input_dollar_txt
                              _rate_table_text_input_center
                            "
                            type="text"
                            @keyup="calculate()"
                            v-model="calculatedData.purchasePrice"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div
                          class="
                            _rate_table_left_content_txt
                            _rate_table_left_content_txt_flex
                          "
                        >
                          <h3
                            v-if="this.text != 'Refinance'"
                            class="
                              _rate_table_left_content_title
                              _rate_table_left_content_title1
                            "
                          >
                            Loan Amount
                          </h3>
                          <h3
                            class="
                              _rate_table_left_content_title
                              _rate_table_left_content_title2
                            "
                          >
                            {{ paymentType }}
                          </h3>
                        </div>
                        <div
                          class="_rate_table_input_downpay_flex"
                          v-if="this.text == 'Purchase'"
                        >
                          <div
                            class="
                              _rate_table_left_content_item
                              _rate_input_dollar_ic
                              _rate_table_left_content_item1
                            "
                          >
                            <input
                              :class="
                                calculatedData.loanAmount.length != 1 &&
                                calculatedData.loanAmount.length != 0
                                  ? '_hasInput'
                                  : ''
                              "
                              class="
                                _rate_dscrptn_txt2
                                _input7
                                _rate_input
                                _rate_input_dollar_txt
                                _rate_border_radius1
                              "
                              type="text"
                              @click="calculatePercent()"
                              @keyup="calculatePercent()"
                              v-model="calculatedData.loanAmount"
                            />
                          </div>
                          <div
                            class="
                              _rate_table_left_content_item
                              _rate_table_left_content_item2
                              _rate_input_dollar_ic_percent
                            "
                          >
                            <input
                              :class="
                                calculatedData.downPaymentAmount.length != 1 &&
                                calculatedData.downPaymentAmount.length != 0
                                  ? '_hasInput'
                                  : ''
                              "
                              class="
                                _rate_dscrptn_txt2
                                _input1
                                _rate_input
                                _rate_border_radius2
                                _rate_table_down_pay_input
                              "
                              type="text"
                              @keyup="calculate()"
                              v-model="calculatedData.downPaymentAmount"
                            />
                          </div>
                        </div>
                        <div class="_rate_table_input_downpay_flex" v-else>
                          <div
                            class="
                              _rate_table_left_content_item
                              _rate_input_dollar_ic
                              _rate_table_left_content_item1
                            "
                            :style="{
                              flex: '1 1',
                            }"
                          >
                            <input
                              :class="
                                calculatedData.loanAmount.length != 1 &&
                                calculatedData.loanAmount.length != 0
                                  ? '_hasInput'
                                  : ''
                              "
                              class="
                                _rate_dscrptn_txt2
                                _input7
                                _rate_input
                                _rate_input_dollar_txt
                                _rate_border_radius1
                              "
                              type="text"
                              placeholder="70,000"
                              :style="{
                                borderRadius: '12px 12px 12px 12px',
                              }"
                              @keyup="comma()"
                              v-model="calculatedData.loanAmount"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div
                    key="1"
                    v-if="filterClicked"
                    class="_rate_table_left_filter_option"
                  >
                    <div class="row">
                      <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="_rate_table_left_content">
                          <div class="_rate_table_left_content_inner">
                            <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                Loan product
                              </h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a-dropdown
                                :class="mortgageProdHasInput ? '_hasInput' : ''"
                                class="_rate_loan_dropdown"
                                :trigger="['click']"
                              >
                                <a
                                  class="
                                    ant-dropdown-link
                                    _rate_loan_dropdown_txt
                                  "
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ mortgageProductValue }}
                                  <a-icon type="down" />
                                </a>
                                <a-menu slot="overlay">
                                  <a-menu-item
                                    @click="
                                      changeMortgageProd('Conventional', 3)
                                    "
                                    class="_rate_drop_list_item"
                                    key="0"
                                    data-cursor-hover
                                    >Conventional</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeMortgageProd('FHA', 1)"
                                    class="_rate_drop_list_item"
                                    key="1"
                                    data-cursor-hover
                                    >FHA</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeMortgageProd('VA', 2)"
                                    class="_rate_drop_list_item"
                                    key="2"
                                    data-cursor-hover
                                    >VA</a-menu-item
                                  >
                                </a-menu>
                              </a-dropdown>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="_rate_table_left_content">
                          <div class="_rate_table_left_content_inner">
                            <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                Loan term
                              </h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a-dropdown
                                class="_rate_loan_dropdown"
                                :trigger="['click']"
                              >
                                <a
                                  :class="loanHasInput ? '_hasInput' : ''"
                                  class="
                                    ant-dropdown-link
                                    _rate_loan_dropdown_txt
                                  "
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ loanTypeValue }}
                                  <a-icon type="down" />
                                </a>
                                <a-menu slot="overlay">
                                  <a-menu-item
                                    @click="changeLoan('30 year fixed', 0)"
                                    class="_rate_drop_list_item"
                                    key="0"
                                    data-cursor-hover
                                    >30 Year</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('25 year fixed', 1)"
                                    class="_rate_drop_list_item"
                                    key="1"
                                    data-cursor-hover
                                    >25 Year</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('20 year fixed', 2)"
                                    class="_rate_drop_list_item"
                                    key="2"
                                    data-cursor-hover
                                    >20 Year</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('15 year fixed', 3)"
                                    class="_rate_drop_list_item"
                                    key="3"
                                    data-cursor-hover
                                    >15 Year</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('10 year fixed', 4)"
                                    class="_rate_drop_list_item"
                                    key="4"
                                    data-cursor-hover
                                    >10 Year</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('10 year ARM/30 yrs', 5)"
                                    class="_rate_drop_list_item"
                                    key="5"
                                    data-cursor-hover
                                    >10/1 ARM</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('7 year ARM/30 yrs', 6)"
                                    class="_rate_drop_list_item"
                                    key="6"
                                    data-cursor-hover
                                    >7/1 ARM</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changeLoan('5 year ARM/30 yrs', 7)"
                                    class="_rate_drop_list_item"
                                    key="7"
                                    data-cursor-hover
                                    >5/1 ARM</a-menu-item
                                  >
                                </a-menu>
                              </a-dropdown>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="_rate_table_left_content">
                          <div class="_rate_table_left_content_inner">
                            <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                Occupancy Type
                              </h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a-dropdown
                                class="_rate_loan_dropdown"
                                :trigger="['click']"
                              >
                                <a
                                  :class="occupencyHasInput ? '_hasInput' : ''"
                                  class="
                                    ant-dropdown-link
                                    _rate_loan_dropdown_txt
                                  "
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ occupencyTypeValue }}
                                  <a-icon type="down" />
                                </a>
                                <a-menu slot="overlay">
                                  <a-menu-item
                                    @click="
                                      changeOccupencyType('Owner Occupied', 0)
                                    "
                                    class="_rate_drop_list_item"
                                    key="0"
                                    data-cursor-hover
                                    >Owner Occupied</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="
                                      changeOccupencyType('Second Home', 2)
                                    "
                                    class="_rate_drop_list_item"
                                    key="2"
                                    data-cursor-hover
                                    >Second Home</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="
                                      changeOccupencyType('Investment', 1)
                                    "
                                    class="_rate_drop_list_item"
                                    key="1"
                                    data-cursor-hover
                                    >Investment</a-menu-item
                                  >
                                </a-menu>
                              </a-dropdown>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="_rate_table_left_content">
                          <div class="_rate_table_left_content_inner">
                            <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                Property Type
                              </h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a-dropdown
                                class="_rate_loan_dropdown"
                                :trigger="['click']"
                              >
                                <a
                                  :class="propertyHasInput ? '_hasInput' : ''"
                                  class="
                                    ant-dropdown-link
                                    _rate_loan_dropdown_txt
                                  "
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ propertyTypeValue }}
                                  <a-icon type="down" />
                                </a>
                                <a-menu slot="overlay">
                                  <a-menu-item
                                    @click="
                                      changePropertyType('Single Family', 0)
                                    "
                                    class="_rate_drop_list_item"
                                    key="0"
                                    data-cursor-hover
                                    >Single Family</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changePropertyType('Condo', 6)"
                                    class="_rate_drop_list_item"
                                    key="1"
                                    data-cursor-hover
                                    >Condo</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="changePropertyType('Town Home', 15)"
                                    class="_rate_drop_list_item"
                                    key="2"
                                    data-cursor-hover
                                    >Townhome</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="
                                      changePropertyType('Manufactured', 5)
                                    "
                                    class="_rate_drop_list_item"
                                    key="3"
                                    data-cursor-hover
                                    >Manufactured</a-menu-item
                                  >
                                  <a-menu-item
                                    @click="
                                      changePropertyType('Multi-Family Home', 1)
                                    "
                                    class="_rate_drop_list_item"
                                    key="4"
                                    data-cursor-hover
                                    >Multi-Family Home</a-menu-item
                                  >
                                </a-menu>
                              </a-dropdown>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div key="2" v-else></div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_item">
                          <button
                            @click="changeFilter"
                            class="_rate_table_left_add_btn"
                            data-cursor-hover
                          >
                            <svg
                              viewBox="0 0 24 24"
                              width="16"
                              height="16"
                              class="mr-2"
                            >
                              <path
                                d="M13.148 19.68H.962a.96.96 0 110-1.92h12.186a3.348 3.348 0 016.422 0h2.563a.96.96 0 110 1.92h-2.562a3.348 3.348 0 01-6.422 0zm1.768-.96a1.444 1.444 0 101.444-1.44 1.444 1.444 0 00-1.444 1.44zM3.525 12H.962a.96.96 0 110-1.92h2.563a3.348 3.348 0 016.422 0h12.187a.96.96 0 110 1.92H9.948a3.348 3.348 0 01-6.422 0zm1.768-.96A1.444 1.444 0 106.737 9.6a1.443 1.443 0 00-1.444 1.439zm7.855-6.72H.962a.96.96 0 110-1.92h12.186a3.348 3.348 0 016.422 0h2.563a.96.96 0 110 1.92h-2.562a3.348 3.348 0 01-6.422 0zm1.768-.96a1.444 1.444 0 101.444-1.44 1.444 1.444 0 00-1.444 1.44z"
                                fill="currentColor"
                              />
                            </svg>
                            {{ filterOption }}
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div  class="_rate_table_left_content_btn">
                          <button  @click="quotedRate++, seeLiveRates(1)" class="_rate_dscrptn_run_rate_btn _live_rate_btn" data-cursor-hover>
                            <span class="_live_rate_btn_txt"
                              >See Live Rates</span
                            >
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
              <div class="_rate_table_top_wrap">
                <div class="_rate_table_top_inner">
                  <div
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item1
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_txt">
                        <h3 class="_rate_table_left_content_title">
                          Mortgage type
                        </h3>
                      </div>
                      <div class="_rate_table_left_content_item">
                        <ul class="_rate_table_content_item_ul">
                          <li
                            @click="changeActive('Purchase', 0)"
                            :class="
                              isActive == 0 ? '_rate_table_item_li_active' : ''
                            "
                            class="_rate_table_content_item_li"
                          >
                            Purchase
                          </li>
                          <li
                            @click="changeActive('Refinance', 1)"
                            :class="
                              isActive == 1 ? '_rate_table_item_li_active' : ''
                            "
                            class="_rate_table_content_item_li"
                          >
                            Refinance
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div
                    v-if="this.text == 'Refinance'"
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item2
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_check">
                        <p class="_rate_table_left_content_check_txt">
                          Cash-Out
                        </p>
                        <div
                          class="
                            _rate_table_left_check _rate_table_left_toggle_wrap
                          "
                        >
                          <!-- <a-checkbox @change="refinanceOnChange">
                          </a-checkbox>-->
                          <span
                            @click="refinanceOnChange()"
                            :class="
                              form.loanpurpose == 2
                                ? '_rate_table_left_toggled'
                                : ''
                            "
                            class="_rate_table_left_toggle _cash_out"
                          >
                            <span
                              v-if="form.loanpurpose == 1"
                              class="_rate_table_left_toggle_ball"
                              >No</span
                            >
                            <span
                              v-else
                              class="
                                _rate_table_left_toggle_ball_on
                                _rate_table_left_toggle_ball
                              "
                              >Yes</span
                            >
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item3
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_txt">
                        <h3 class="_rate_table_left_content_title">
                          Postal Code
                        </h3>
                      </div>
                      <div class="_rate_table_left_content_item">
                        <input
                          :class="
                            form.propertyZip.length != 0 ? '_hasInput' : ''
                          "
                          @keyup="onChangeZip"
                          class="_rate_dscrptn_txt2 _input1 _rate_input"
                          v-model="form.propertyZip"
                          type="text"
                          placeholder="00000"
                          maxlength="5"
                        />
                      </div>
                      <div
                        v-if="form.propertyZip.length != 0"
                        class="_rate_table_left_content_item"
                      >
                        <div class="_rate_table_left_state_wrap">
                          <p
                            v-if="form.propertyState"
                            class="_rate_table_left_state_txt"
                          >
                            State:
                            <span class="_rate_table_left_state_name">
                              {{ form.propertyState }}
                            </span>
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item4
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_txt">
                        <h3 class="_rate_table_left_content_title">
                          Credit score rating
                        </h3>
                      </div>
                      <div v-on:click="showDrop3 = !showDrop3" class="_rate_table_left_content_item">
                         <a
                              :class="creditHasInput ? '_hasInput' : ''"
                              class="
                               _ant_dropdown_link _rate_loan_dropdown_txt _rate_credit_dropdown_txt _rate_loan_dropdown _rate_credit_dropdown ant-dropdown-trigger
                              "
                              @click="(e) => e.preventDefault()"
                            >
                              {{ creditTypeValue }}
                             <svg viewBox="64 64 896 896" data-icon="down" width="10" height="10" fill="currentColor" aria-hidden="true" focusable="false" class=""><path d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"></path></svg>
                            </a>
                        <ul v-if="showDrop3" class="_new_rate_table_drop _new_rate_table_drop_top">
                            <div class="_ant_row">
                            <div class="_ant_col_12">
                                <li @click="changeCredit('760 +', 760)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">760 +</li>
                            </div>
                            <div class="_ant_col_12">
                            <li @click="changeCredit('740-750', 740)" class="_rate_drop_list_item _new_rate_drop_list_item  undefined-item">740-759</li>
                            </div>
                            </div>
                            <div class="_ant_row">
                            <div class="_ant_col_12">
                            <li @click="changeCredit('720-739', 720)" class=" _rate_drop_list_item _new_rate_drop_list_item undefined-item">720-739</li>
                            </div>
                            <div class="_ant_col_12">
                                <li @click="changeCredit('700-719', 700)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">700-719</li>
                            </div>
                            </div>
                            <div class="_ant_row">
                                <div class="_ant_col_12">
                                    <li @click="changeCredit('680-699', 680)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">680-699</li>
                                </div>
                                <div class="_ant_col_12">
                                    <li @click="changeCredit('660-679', 660)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">660-679</li>
                                </div>
                            </div>
                            <div class="_ant_row">
                                <div class="_ant_col_12">
                                    <li @click="changeCredit('640-659', 640)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">640-659</li>
                                </div>
                                <div class="_ant_col_12">
                                    <li @click="changeCredit('620-639', 620)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">620-639</li>
                                </div>
                            </div>
                            <div class="_ant_row">
                                <div class="_ant_col_12">
                                    <li @click="changeCredit('580-619', 580)" class="_rate_drop_list_item _new_rate_drop_list_item undefined-item">580-619</li>
                                </div>
                            </div>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div
                    :class="
                      this.text != 'Purchase'
                        ? '_rate_table_top_inner_item55'
                        : ''
                    "
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item5
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div
                        class="
                          _rate_table_left_content_txt
                          _rate_table_left_content_txt_flex
                        "
                      >
                        <h3
                          v-if="this.text != 'Refinance'"
                          class="_rate_table_left_content_title"
                        >
                          {{ (purchaseType = "Purchase Price") }}
                        </h3>
                        <h3 v-else class="_rate_table_left_content_title">
                          {{ (purchaseType = "Home Value") }}
                        </h3>
                        <!-- <a class="_rate_table_left_hyperlink" href="#0" data-cursor-hover>Check Home Value</a> -->
                      </div>
                      <div
                        class="
                          _rate_table_left_content_item _rate_input_dollar_ic
                        "
                      >
                        <input
                          v-if="this.text != 'Refinance'"
                          :class="
                            calculatedData.purchasePrice.length != 1 &&
                            calculatedData.purchasePrice.length != 0
                              ? '_hasInput'
                              : ''
                          "
                          id="purchase"
                          class="
                            _rate_dscrptn_txt2
                            _input1
                            _rate_input _rate_input_dollar_txt
                          "
                          type="text"
                          @keyup="calculate()"
                          v-model="calculatedData.purchasePrice"
                        />
                        <input
                          v-else
                          :class="
                            calculatedData.purchasePrice.length != 1 &&
                            calculatedData.purchasePrice.length != 0
                              ? '_hasInput'
                              : ''
                          "
                          id="purchase"
                          class="
                            _rate_dscrptn_txt2
                            _input1
                            _rate_input
                            _rate_input_dollar_txt
                            _rate_table_text_input_center
                          "
                          type="text"
                          @keyup="calculate()"
                          v-model="calculatedData.purchasePrice"
                        />
                      </div>
                    </div>
                  </div>
                  <div
                    :class="
                      this.text != 'Purchase'
                        ? '_rate_table_top_inner_item66'
                        : ''
                    "
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item6
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div
                        class="
                          _rate_table_left_content_txt
                          _rate_table_left_content_txt_flex
                        "
                      >
                        <h3
                          v-if="this.text != 'Refinance'"
                          class="
                            _rate_table_left_content_title
                            _rate_table_left_content_title1
                          "
                        >
                          Loan Amount
                        </h3>
                        <h3
                          class="
                            _rate_table_left_content_title
                            _rate_table_left_content_title2
                          "
                        >
                          {{ paymentType }}
                        </h3>
                      </div>
                      <div
                        class="_rate_table_input_downpay_flex"
                        v-if="this.text == 'Purchase'"
                      >
                        <div
                          class="
                            _rate_table_left_content_item
                            _rate_input_dollar_ic
                            _rate_table_left_content_item1
                          "
                        >
                          <input
                            :class="
                              calculatedData.loanAmount.length != 1 &&
                              calculatedData.loanAmount.length != 0
                                ? '_hasInput'
                                : ''
                            "
                            class="
                              _rate_dscrptn_txt2
                              _input7
                              _rate_input
                              _rate_input_dollar_txt
                              _rate_border_radius1
                            "
                            type="text"
                            @click="calculatePercent()"
                            @keyup="calculatePercent()"
                            v-model="calculatedData.loanAmount"
                          />
                        </div>
                        <div
                          class="
                            _rate_table_left_content_item
                            _rate_table_left_content_item2
                            _rate_input_dollar_ic_percent
                          "
                        >
                          <input
                            :class="
                              calculatedData.downPaymentAmount.length != 1 &&
                              calculatedData.downPaymentAmount.length != 0
                                ? '_hasInput'
                                : ''
                            "
                            class="
                              _rate_dscrptn_txt2
                              _input1
                              _rate_input
                              _rate_border_radius2
                              _rate_table_down_pay_input
                            "
                            type="text"
                            @keyup="calculate()"
                            v-model="calculatedData.downPaymentAmount"
                          />
                        </div>
                      </div>
                      <div class="_rate_table_input_downpay_flex" v-else>
                        <div
                          class="
                            _rate_table_left_content_item
                            _rate_input_dollar_ic
                            _rate_table_left_content_item1
                          "
                          :style="{
                            flex: '1 1',
                          }"
                        >
                          <input
                            :class="
                              calculatedData.loanAmount.length != 1 &&
                              calculatedData.loanAmount.length != 0
                                ? '_hasInput'
                                : ''
                            "
                            class="
                              _rate_dscrptn_txt2
                              _input7
                              _rate_input
                              _rate_input_dollar_txt
                              _rate_border_radius1
                            "
                            type="text"
                            placeholder="70,000"
                            :style="{
                              borderRadius: '12px 12px 12px 12px',
                            }"
                            @keyup="comma()"
                            v-model="calculatedData.loanAmount"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item7
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_txt">
                        <h3 class="_rate_table_left_content_title">
                          Loan product
                        </h3>
                      </div>
                      <div v-on:click="showDrop4 = !showDrop4" class="_rate_table_left_content_item">
                        <a class="_rate_loan_dropdown_txt _rate_loan_dropdown _ant_dropdown_trigger"
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ mortgageProductValue }}
                                 <svg viewBox="64 64 896 896" data-icon="down" width="10" height="10" fill="currentColor" aria-hidden="true" focusable="false" class=""><path d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"></path></svg>
                        </a>
                        <ul v-if="showDrop4" class="_new_rate_drop_list_dropdown _new_rate_table_drop_top">
                          <li @click="changeMortgageProd('Conventional', 3)" class="_rate_drop_list_item _new_rate_drop_list_item _ant_drop_item">Conventional</li>
                          <li  @click="changeMortgageProd('FHA', 1)" class=" _rate_drop_list_item _new_rate_drop_list_item _ant_drop_item">FHA</li>
                          <li @click="changeMortgageProd('VA', 2)" class=" _rate_drop_list_item _new_rate_drop_list_item _ant_drop_item">VA</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div
                    class="
                      _rate_table_left_content
                      _rate_table_top_inner_item
                      _rate_table_top_inner_item8
                    "
                  >
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_txt">
                        <h3 class="_rate_table_left_content_title">
                          Loan term
                        </h3>
                      </div>
                      <div v-on:click="showDrop5 = !showDrop5" class="_rate_table_left_content_item">
                         <a
                            :class="loanHasInput ? '_hasInput' : ''"
                            class="
                             _ant_dropdown_link _rate_loan_dropdown_txt _rate_credit_dropdown_txt _rate_loan_dropdown _rate_credit_dropdown ant-dropdown-trigger _ant_dropdown_trigger
                                  "
                                  @click="(e) => e.preventDefault()"
                                >
                                  {{ loanTypeValue }}
                                  <svg viewBox="64 64 896 896" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false" class=""><path d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"></path></svg>
                          </a>
                          <ul v-if="showDrop5" class="_new_rate_drop_list_dropdown _new_rate_table_drop_top">
                            <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">30 Year</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">25 Year</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">20 Year</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">15 Year</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">10 Year</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">10/1 ARM</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">7/1 ARM</li>
                             <li class="
                              _rate_drop_list_item
                              _new_rate_drop_list_item
                             ant-dropdown-menu-item _ant_drop_item">5/1 ARM</li>
                             </ul>
                      </div>
                    </div>
                  </div>
                  <div class="_rate_table_left_content">
                    <div class="_rate_table_left_content_inner">
                      <div class="_rate_table_left_content_item">
                        <a href="#0" class="_new_rate_table_top_more_drop_wrap _new_rate_table_top_more_drop_wrap1">
                          <a v-on:click="showDrop = !showDrop" class="_rate_table_left_add_btn">More Filters</a>
                          <a v-if="showDrop" href="#0" class="_new_rate_table_top_more_drop _new_rate_table_top_more_drop_menu">
                            <div class="_rate_table_left_content_inner">
                              <div class="_rate_table_left_content_txt _rate_title">
                                <h3 class="_rate_table_left_content_title">
                                  Waive Escrows
                                </h3>
                                <h3 class="_rate_table_left_content_title _rate_title_txt">
                                  Lead Source
                                </h3>
                              </div>
                              <div class="_rate_table_left_content_item" >
                                <div class="_new_rate_table_waive_wrap">
                                  <ul class="_new_rate_table_waive_ul">
                                    <li class="_new_rate_table_waive_li" :class=" form.waiveescrow == 0 ? '_new_rate_table_waive_li_active': ''"
                                        @click="waiveEscrows(0)"
                                    >
                                      No
                                    </li>
                                    <li class="_new_rate_table_waive_li" :class=" form.waiveescrow == 1 ? '_new_rate_table_waive_li_active'
                                      : ''" @click="waiveEscrows(1)">
                                        Yes
                                    </li>
                                            <span class="_new_rate_li">
                                              <li
                                                class="_new_rate_table_waive_li"
                                                @click="passwordClick"
                                              >
                                                <span
                                                  :class="
                                                    unlocked
                                                      ? '_source_txt'
                                                      : ''
                                                  "
                                                  >{{ LeadSource }}</span
                                                >
                                                <svg
                                                  v-if="!unlocked"
                                                  xmlns="http://www.w3.org/2000/svg"
                                                  width="18"
                                                  height="18"
                                                  viewBox="0 0 24 24"
                                                  fill="none"
                                                  stroke="currentColor"
                                                  stroke-width="2"
                                                  stroke-linecap="round"
                                                  stroke-linejoin="round"
                                                  class="feather feather-lock"
                                                >
                                                  <rect
                                                    x="3"
                                                    y="11"
                                                    width="18"
                                                    height="11"
                                                    rx="2"
                                                    ry="2"
                                                  />
                                                  <path
                                                    d="M7 11V7a5 5 0 0 1 10 0v4"
                                                  />
                                                </svg>
                                              </li>
                                              <div
                                                class="_new_rate_passcode"
                                                :class="
                                                  passwordOn ? '' : '_rate_drop'
                                                "
                                              >
                                                <p>Passcode</p>
                                                <input
                                                  @keyup="submitPass()"
                                                  id="password-field"
                                                  type="password"
                                                  class="
                                                    form-control
                                                    _pass_input
                                                  "
                                                  name="password"
                                                  v-model="password"
                                                />
                                              </div>
                                              <div class="_new_rate_dropdown">
                                                <div
                                                  :class="
                                                    leadSourceOn
                                                      ? ''
                                                      : '_rate_drop'
                                                  "
                                                >
                                                  <ul>
                                                    <li>
                                                      <p
                                                        @click="
                                                          changeLeadSource(1000)
                                                        "
                                                        key="1"
                                                      >
                                                        Lending Tree
                                                      </p>
                                                    </li>
                                                    <li>
                                                      <p
                                                        @click="
                                                          changeLeadSource(1001)
                                                        "
                                                        key="1"
                                                      >
                                                        Bank Rate
                                                      </p>
                                                    </li>
                                                  </ul>
                                                </div>
                                              </div>
                                            </span>
                                          </ul>
                                        </div>
                                      </div>
                            </div>
                            <div class="_rate_table_left_content_inner _rate_table_left_content_inner1">
                              <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                  Property Type</h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a v-on:click="showDrop1 = !showDrop1" class="_rate_loan_dropdown_txt _rate_loan_dropdown _ant_dropdown_trigger">
                                  Single Family
                                <svg viewBox="64 64 896 896" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false" class=""><path d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"></path></svg>
                              </a>
                              <ul v-if="showDrop1" class="_ant_dropdown_content">
                                <li class="_rate_drop_list_item">Single Family</li>
                                <li class="_rate_drop_list_item">Condo</li>
                                <li class="_rate_drop_list_item">Townhome</li>
                                <li class="_rate_drop_list_item">Manufactured</li>
                                <li class="_rate_drop_list_item">Multi-Family Home</li>
                              </ul>
                            </div>
                          </div>
                          <div class="_rate_table_left_content_inner _rate_table_left_content_inner1">
                              <div class="_rate_table_left_content_txt">
                              <h3 class="_rate_table_left_content_title">
                                  Property Type</h3>
                            </div>
                            <div class="_rate_table_left_content_item">
                              <a v-on:click="showDrop2 = !showDrop2" class="_rate_loan_dropdown_txt _rate_loan_dropdown _ant_dropdown_trigger">
                                  Occupancy Type
                                <svg viewBox="64 64 896 896" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false" class=""><path d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"></path></svg>
                              </a>
                              <ul v-if="showDrop2" class="_ant_dropdown_content">
                                <li class="_rate_drop_list_item">Owner Occupied</li>
                                <li class="_rate_drop_list_item">Second Home</li>
                                <li class="_rate_drop_list_item">Investment</li>
                              </ul>
                            </div>
                          </div>
                          </a>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="_rate_table_left_content">
                      <div class="_rate_table_left_content_inner">
                        <div class="_rate_table_left_content_btn">
                          <button
                            @click="quotedRate++, showLoading = true, seeLiveRates(1)"
                            class="_rate_dscrptn_run_rate_btn _live_rate_btn"
                            data-cursor-hover
                          >
                            <span class="_live_rate_btn_txt"
                              >See Live Rates</span
                            >
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 mx-auto d-none">
              <div class="_rate_table_top_main_wrap">
                <a href="#0" class="_rate_table_top_email_btn">Email Quote</a>
                <div class="_rate_table_top_main_right_wrap">
                  <div class="_rate_table_top_main_right_left_wrap">
                    <h5 class="_rate_table_top_main_right_left_head">
                      Rate Alert
                    </h5>
                    <p class="_rate_table_top_main_right_left_txt">
                      Subscribe for updates
                    </p>
                  </div>
                  <div class="_rate_table_top_main_right_right_wrap">
                    <div class="_rate_table_top_main_right_toggle">
                      <input type="checkbox" class="checkbox" id="chk" />
                      <label class="label" for="chk">
                        <div class="ball"></div>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 mx-auto">
              <div class="_rate_table_right_wrap">
                <div class="_rate_table_right_middle_wrap">
                  <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_rate_table_right_middle">
                        <div class="row">
                          <div
                            class="
                              col-xl-12 col-lg-12 col-md-12 col-sm-12
                              d-none
                            "
                          >
                            <transition name="listFade" mode="out-in">
                              <div
                                v-if="notLoaded == 0"
                                class="_rate_table_loading"
                                key="loading"
                              >
                                <div class="row">
                                  <div
                                    class="
                                      col-xl-9 col-lg-9 col-md-12 col-sm-12
                                      mx-auto
                                    "
                                  >
                                    <ul class="_rate_table_loading_ul">
                                      <li class="_rate_table_loading_li">
                                        <div class="_rate_table_loading_img">
                                          <img
                                            class="_tik_lg_green"
                                            src="../assets/images/tik-lg-green.svg"
                                            alt
                                          />
                                        </div>
                                        <div class="_rate_table_loading_txt">
                                          <h3 class="_rate_table_loading_title">
                                            Analyzing Data
                                          </h3>
                                          <p class="_rate_table_loading_para">
                                            Checking for savings
                                          </p>
                                        </div>
                                      </li>
                                      <li class="_rate_table_loading_li">
                                        <div class="_rate_table_loading_img">
                                          <img
                                            class="_tik_lg_green"
                                            src="../assets/images/tik-lg-green.svg"
                                            alt
                                          />
                                        </div>
                                        <div class="_rate_table_loading_txt">
                                          <h3 class="_rate_table_loading_title">
                                            Checking Home Value
                                          </h3>
                                          <p class="_rate_table_loading_para">
                                            Analyzing Data of other homes in
                                            your area
                                          </p>
                                        </div>
                                      </li>
                                      <li class="_rate_table_loading_li">
                                        <div class="_rate_table_loading_img">
                                          <img
                                            class="_tik_lg_green"
                                            src="../assets/images/dots-lg-green.svg"
                                            alt
                                          />
                                        </div>
                                        <div class="_rate_table_loading_txt">
                                          <h3 class="_rate_table_loading_title">
                                            Finalizing your analysis
                                          </h3>
                                          <p class="_rate_table_loading_para">
                                            Almost ready for you to view
                                          </p>
                                        </div>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div
                                v-else-if="notLoaded == 1"
                                class="_rate_table_main"
                                key="loaded"
                              >
                                <div class="_rate_table_main_ta">
                                  <div class="_rate_table_top">
                                    <ul class="_rate_table_top_ul">
                                      <li>Rate</li>
                                      <li>APR</li>
                                      <!-- <li>Lender Fees</li> -->
                                      <li>Points/Credits</li>
                                      <li>Payment (P&I)</li>
                                    </ul>
                                  </div>
                                  <div class="_rate_table_itm_all">
                                    <!-- ITEM -->
                                    <template v-if="results.length">
                                      <div
                                        class="_rate_table_itm_row"
                                        v-for="(item, index) in results"
                                        :key="index"
                                      >
                                        <div class="_rate_table_itm">
                                          <p
                                            class="_rate_table_itm_txt3 d-none"
                                            v-if="index == 0"
                                          >
                                            Lowest Rate
                                          </p>
                                          <ul class="_rate_table_itm_ul">
                                            <li>
                                              <div
                                                class="
                                                  _rate_table_sqre
                                                  form-group
                                                "
                                              >
                                                <input
                                                  type="checkbox"
                                                  class="_rate_table_check"
                                                  :id="index"
                                                  :value="index"
                                                  v-model="checkedRow"
                                                  data-cursor-hover
                                                />
                                                <label
                                                  :for="index"
                                                  data-cursor-hover
                                                ></label>
                                              </div>
                                            </li>
                                            <li>
                                              <img
                                                v-if="
                                                  item.vendorName ==
                                                  'Quicken Wholesale(2677)'
                                                "
                                                src="../assets/images/quickrocket.png"
                                                alt="Vendor Image"
                                                class="_rate_table_vendor_img"
                                              />
                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                {{ item.rate }} %
                                              </p>
                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                {{ item.apr }} %
                                              </p>
                                            </li>
                                            <!-- <li>
                                              <p class="_rate_table_itm_txt1">
                                                ${{ item.fees }}
                                              </p>
                                            </li>-->
                                            <li>
                                              <p
                                                class="_rate_table_itm_txt1"
                                                v-if="item.points > 0"
                                              >
                                                ${{
                                                  Number(
                                                    parseInt(item.points)
                                                  ).toLocaleString()
                                                }}
                                              </p>
                                              <p
                                                class="_rate_table_itm_txt1"
                                                v-else
                                              >
                                                - ${{
                                                  parseInt(item.points)
                                                    | getFilterDigit
                                                }}
                                              </p>
                                              <div class="_rate_table_txt">
                                                <span
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                  "
                                                  >{{ item.tag_point }}</span
                                                >
                                                <span
                                                  v-if="item.points > 0"
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                    _rate_table_itm_ul_li_span_point
                                                  "
                                                  >Points</span
                                                >
                                                <span
                                                  v-else
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                    _rate_table_itm_ul_li_span_credit
                                                  "
                                                  >Credit</span
                                                >
                                              </div>

                                              <!-- <span class="_rate_table_itm_txt2">
                                                                                                Points: {{item.points}}
                                              </span>-->
                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                ${{
                                                  Number(
                                                    parseInt(
                                                      item.monthlyPayment
                                                    )
                                                  ).toLocaleString()
                                                }}
                                              </p>
                                            </li>
                                            <li>
                                              <a
                                                href="https://discount.my1003app.com/register"
                                                target="_blank"
                                              >
                                                <button
                                                  class="_rate_table_btn"
                                                  data-cursor-hover
                                                >
                                                  Apply Now
                                                </button>
                                              </a>
                                            </li>
                                          </ul>
                                        </div>
                                      </div>
                                      <!-- <div class="_rate_table_bottom_more_btn_wrap">
                                                                                <button class="_rate_table_more_btn">More Results</button>
                                      </div>-->
                                    </template>

                                    <div v-else>
                                      <div class="_rate_table_error_wrap">
                                        <div class="container">
                                          <div class="row">
                                            <div
                                              class="
                                                col-xl-12
                                                col-lg-12
                                                col-md-12
                                                col-sm-12
                                              "
                                            >
                                              <div
                                                class="_rate_table_error_txt"
                                              >
                                                <h3
                                                  class="
                                                    _rate_table_error_title
                                                  "
                                                >
                                                  We'll have more rates to show
                                                  you soon!
                                                </h3>
                                                <p
                                                  class="_rate_table_error_para"
                                                >
                                                  Enter your email to sign up
                                                  for Alerts, a weekly digest of
                                                  rates, and industry news. Once
                                                  we offer loan options in your
                                                  state or have a product to fit
                                                  your needs, our team will
                                                  reach out.
                                                </p>
                                              </div>
                                            </div>
                                          </div>
                                          <hr class="_divider" />
                                          <div class="row">
                                            <div
                                              class="
                                                col-xl-6
                                                col-lg-6
                                                col-md-12
                                                col-sm-12
                                                mx-auto
                                              "
                                            >
                                              <div
                                                class="_rate_table_error_inner"
                                              >
                                                <div
                                                  class="
                                                    _rate_table_error_inner_email_wrap
                                                  "
                                                >
                                                  <form
                                                    class="
                                                      _rate_table_error_email_form
                                                    "
                                                  >
                                                    <h3
                                                      class="
                                                        _rate_table_error_email_title
                                                      "
                                                    >
                                                      Email Address
                                                    </h3>
                                                    <input
                                                      type="email"
                                                      class="
                                                        _rate_table_error_email_input
                                                      "
                                                    />
                                                    <button
                                                      class="
                                                        _new_rate_table_error_email_button
                                                      "
                                                    >
                                                      Get Alerted
                                                    </button>
                                                    <p
                                                      class="
                                                        _rate_table_error_email_para
                                                      "
                                                    >
                                                      By clicking "Get Alerted",
                                                      I agree to Discount's
                                                      <a
                                                        href="https://www.privacypolicies.com/live/7a254ff4-9ff4-4289-bd4b-d494ffe12626"
                                                        class="
                                                          _rate_table_error_email_para_link
                                                        "
                                                        >Privacy Policy</a
                                                      >
                                                    </p>
                                                  </form>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </transition>
                            <!-- <div v-if="notLoaded == 0" class="_rate_table_loader">

                            </div>-->
                          </div>
                          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <transition name="shimmerFade">
                              <div
                                v-if="notLoaded == 2"
                                class="_rate_table_loading"
                                key="loading"
                              >
                                <div class="row">
                                  <div
                                    class="
                                      col-xl-12 col-lg-12 col-md-12 col-sm-12
                                    "
                                  >
                                    <div class="_rate_table_main" key="loaded">
                                      <div class="_rate_table_main_ta">
                                        <div class="_rate_table_top">
                                          <ul
                                            class="
                                              _rate_table_top_ul
                                              _rate_table_new_top_ul
                                            "
                                          >
                                            <li>
                                              <!-- Lender -->
                                              </li>
                                            <li>
                                              Rate
                                              <!-- <span
                                                class="
                                                  _rate_table_new_top_info_ic
                                                "
                                              >
                                                <svg
                                                  width="20"
                                                  height="20"
                                                  viewBox="0 0 48 48"
                                                  fill="none"
                                                  xmlns="http://www.w3.org/2000/svg"
                                                >
                                                  <path
                                                    fill-rule="evenodd"
                                                    clip-rule="evenodd"
                                                    d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                                    fill="#001cdb"
                                                  />
                                                </svg>
                                              </span> -->
                                            </li>
                                            <li>
                                              APR
                                              <span
                                                class="
                                                  _rate_table_new_top_info_ic
                                                "
                                              >
                                                <svg
                                                  width="20"
                                                  height="20"
                                                  viewBox="0 0 48 48"
                                                  fill="none"
                                                  xmlns="http://www.w3.org/2000/svg"
                                                >
                                                  <path
                                                    fill-rule="evenodd"
                                                    clip-rule="evenodd"
                                                    d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                                    fill="#001cdb"
                                                  />
                                                </svg>
                                              </span>
                                              <div class="_popover">
                                                  <p class="_test_content_para">The rate is amount you will pay each year to borrower the money, expressed as a percentage.</p>
                                              </div>
                                            </li>
                                            <!-- <li>Lender Fees</li> -->
                                            <li>
                                              Points/Credits
                                               <span
                                                class="
                                                  _rate_table_new_top_info_ic
                                                "
                                              >
                                                <svg
                                                  width="20"
                                                  height="20"
                                                  viewBox="0 0 48 48"
                                                  fill="none"
                                                  xmlns="http://www.w3.org/2000/svg"
                                                >
                                                  <path
                                                    fill-rule="evenodd"
                                                    clip-rule="evenodd"
                                                    d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                                    fill="#001cdb"
                                                  />
                                                </svg>
                                              </span>
                                               <div class="_popover _popover1">
                                                <p class="_test_content_para">The Annual Pecentage Rate (APR) is the cost you pay each year to borrower the money, including  fees, expressed as a percetnage. The APR is a broader measure of the cost to you of borrowing money since it reflects not only the interest rate but also the fees that you have to pay to get the loan.</p>
                                              </div>
                                            </li>
                                            <li>
                                              Payment (P&I)
                                                 <span
                                                class="
                                                  _rate_table_new_top_info_ic
                                                "
                                              >
                                                <svg
                                                  width="20"
                                                  height="20"
                                                  viewBox="0 0 48 48"
                                                  fill="none"
                                                  xmlns="http://www.w3.org/2000/svg"
                                                >
                                                  <path
                                                    fill-rule="evenodd"
                                                    clip-rule="evenodd"
                                                    d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                                    fill="#001cdb"
                                                  />
                                                </svg>
                                              </span>
                                             <div class="_popover _popover2">
                                                <p class="_test_content_para">The monthly payment displayed includes principle and interest but DOES NOT include taxes, insurance, and private mortgage insurance (PMI). Most lenders will add these to your monthly payment once in process unless you ask them to waive escrows. Escrows can’t be waiting on all loans. Please contact a loan officer to dicuss further.</p>
                                              </div>
                                            </li>
                                          </ul>
                                        </div>
                                        <div class="_rate_table_itm_all">
                                          <!-- ITEM -->
                                          <template v-for="n in 5">
                                            <div
                                              class="
                                                _rate_table_itm_row
                                                _rate_table_itm_static_row
                                              "
                                              :key="n"
                                            >
                                              <div class="_rate_table_itm">
                                                <ul
                                                  class="
                                                    _rate_table_itm_ul
                                                    _rate_table_itm_static_ul
                                                  "
                                                >
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  ></li>
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  ></li>
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  >
                                                    <p
                                                      class="
                                                        _rate_table_itm_txt1
                                                      "
                                                    ></p>
                                                  </li>
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  >
                                                    <p
                                                      class="
                                                        _rate_table_itm_txt1
                                                      "
                                                    ></p>
                                                  </li>
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  >
                                                    <p
                                                      class="
                                                        _rate_table_itm_txt1
                                                      "
                                                    ></p>
                                                  </li>
                                                  <li
                                                    class="
                                                      _rate_table_itm_static_li
                                                      _shimmer_animate
                                                    "
                                                  >
                                                    <p
                                                      class="
                                                        _rate_table_itm_txt1
                                                      "
                                                    ></p>
                                                  </li>
                                                </ul>
                                              </div>
                                            </div>
                                          </template>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div
                                v-else-if="notLoaded == 1"
                                class="_rate_table_main"
                                key="loaded"
                              >
                                <div class="_rate_table_main_ta">
                                  <div class="_rate_table_top">
                                    <ul
                                      class="
                                        _rate_table_top_ul
                                        _rate_table_new_top_ul
                                      "
                                    >
                                      <li>Lender</li>
                                      <li>
                                        Rate
                                        <span
                                          class="_rate_table_new_top_info_ic"
                                        >
                                          <svg
                                            width="20"
                                            height="20"
                                            viewBox="0 0 48 48"
                                            fill="none"
                                            xmlns="http://www.w3.org/2000/svg"
                                          >
                                            <path
                                              fill-rule="evenodd"
                                              clip-rule="evenodd"
                                              d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                              fill="#001cdb"
                                            />
                                          </svg>
                                        </span>
                                      </li>
                                      <li>
                                        APR
                                        <span
                                          class="_rate_table_new_top_info_ic"
                                        >
                                          <svg
                                            width="20"
                                            height="20"
                                            viewBox="0 0 48 48"
                                            fill="none"
                                            xmlns="http://www.w3.org/2000/svg"
                                          >
                                            <path
                                              fill-rule="evenodd"
                                              clip-rule="evenodd"
                                              d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                              fill="#001cdb"
                                            />
                                          </svg>
                                        </span>
                                      </li>
                                      <!-- <li>Lender Fees</li> -->
                                      <li>
                                        Points/Credits
                                        <span
                                          class="_rate_table_new_top_info_ic"
                                        >
                                          <svg
                                            width="20"
                                            height="20"
                                            viewBox="0 0 48 48"
                                            fill="none"
                                            xmlns="http://www.w3.org/2000/svg"
                                          >
                                            <path
                                              fill-rule="evenodd"
                                              clip-rule="evenodd"
                                              d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                              fill="#001cdb"
                                            />
                                          </svg>
                                        </span>
                                      </li>
                                      <li>
                                        Payment (P&I)
                                        <span
                                          class="_rate_table_new_top_info_ic"
                                        >
                                          <svg
                                            width="20"
                                            height="20"
                                            viewBox="0 0 48 48"
                                            fill="none"
                                            xmlns="http://www.w3.org/2000/svg"
                                          >
                                            <path
                                              fill-rule="evenodd"
                                              clip-rule="evenodd"
                                              d="M24 4.5C13.2304 4.5 4.5 13.2304 4.5 24C4.5 34.7696 13.2304 43.5 24 43.5C34.7696 43.5 43.5 34.7696 43.5 24C43.5 13.2304 34.7696 4.5 24 4.5ZM1.5 24C1.5 11.5736 11.5736 1.5 24 1.5C36.4264 1.5 46.5 11.5736 46.5 24C46.5 36.4264 36.4264 46.5 24 46.5C11.5736 46.5 1.5 36.4264 1.5 24ZM22.5 14.6667C22.5 13.8382 23.1716 13.1667 24 13.1667H24.0233C24.8518 13.1667 25.5233 13.8382 25.5233 14.6667C25.5233 15.4951 24.8518 16.1667 24.0233 16.1667H24C23.1716 16.1667 22.5 15.4951 22.5 14.6667ZM20.1667 24C20.1667 23.1716 20.8382 22.5 21.6667 22.5H24C24.8284 22.5 25.5 23.1716 25.5 24V31.8333H26.3333C27.1618 31.8333 27.8333 32.5049 27.8333 33.3333C27.8333 34.1618 27.1618 34.8333 26.3333 34.8333H24C23.1716 34.8333 22.5 34.1618 22.5 33.3333V25.5H21.6667C20.8382 25.5 20.1667 24.8284 20.1667 24Z"
                                              fill="#001cdb"
                                            />
                                          </svg>
                                        </span>
                                      </li>
                                    </ul>
                                  </div>
                                  <div class="_rate_table_itm_all">
                                    <!-- ITEM -->
                                    <template v-if="results.length">
                                      <div
                                        class="_rate_table_itm_row"
                                        v-for="(item, index) in results"
                                        :key="index"
                                      >
                                        <div class="_rate_table_itm">
                                          <p
                                            class="_rate_table_itm_txt3 d-none"
                                            v-if="index == 0"
                                          >
                                            Lowest Rate
                                          </p>
                                          <ul class="_rate_table_itm_ul">
                                            <li>
                                              <div
                                                class="
                                                  _rate_table_sqre
                                                  form-group
                                                "
                                              >
                                                <input
                                                  type="checkbox"
                                                  class="_rate_table_check"
                                                  :id="index"
                                                  :value="index"
                                                  v-model="checkedRow"
                                                  data-cursor-hover
                                                />
                                                <label
                                                  :for="index"
                                                  data-cursor-hover
                                                ></label>
                                              </div>
                                            </li>
                                            <li>

                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                {{ item.rate }} %
                                              </p>
                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                {{ item.apr }} %
                                              </p>
                                            </li>
                                            <li>
                                              <p
                                                class="_rate_table_itm_txt1"
                                                v-if="item.points > 0"
                                              >
                                                ${{
                                                  Number(
                                                    parseInt(item.points)
                                                  ).toLocaleString()
                                                }}
                                              </p>
                                              <p
                                                class="_rate_table_itm_txt1"
                                                v-else
                                              >
                                                - ${{
                                                  parseInt(item.points)
                                                    | getFilterDigit
                                                }}
                                              </p>
                                              <div class="_rate_table_txt">
                                                <span
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                  "
                                                  >{{ item.tag_point }}</span
                                                >
                                                <span
                                                  v-if="item.points > 0"
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                    _rate_table_itm_ul_li_span_point
                                                  "
                                                  >Points</span
                                                >
                                                <span
                                                  v-else
                                                  class="
                                                    _rate_table_itm_ul_li_span
                                                    _rate_table_itm_ul_li_span_credit
                                                  "
                                                  >Credit</span
                                                >
                                              </div>
                                            </li>
                                            <li>
                                              <p class="_rate_table_itm_txt1">
                                                ${{
                                                  Number(
                                                    parseInt(
                                                      item.monthlyPayment
                                                    )
                                                  ).toLocaleString()
                                                }}
                                              </p>
                                            </li>
                                            <li>
                                              <a
                                                href="https://discount.my1003app.com/register"
                                                target="_blank"
                                              >
                                                <button
                                                  class="_rate_table_btn"
                                                  data-cursor-hover
                                                >
                                                  Apply Now
                                                </button>
                                              </a>
                                            </li>
                                          </ul>
                                        </div>
                                      </div>
                                    </template>

                                    <div v-else>
                                      <div class="_rate_table_error_wrap">
                                        <div class="container">
                                          <div class="row">
                                            <div
                                              class="
                                                col-xl-12
                                                col-lg-12
                                                col-md-12
                                                col-sm-12
                                              "
                                            >
                                              <div
                                                class="_rate_table_error_txt"
                                              >
                                                <h3
                                                  class="
                                                    _rate_table_error_title
                                                  "
                                                >
                                                  We'll have more rates to show
                                                  you soon!
                                                </h3>
                                                <p
                                                  class="_rate_table_error_para"
                                                >
                                                  Enter your email to sign up
                                                  for Alerts, a weekly digest of
                                                  rates, and industry news. Once
                                                  we offer loan options in your
                                                  state or have a product to fit
                                                  your needs, our team will
                                                  reach out.
                                                </p>
                                              </div>
                                            </div>
                                          </div>
                                          <hr class="_divider" />
                                          <div class="row">
                                            <div
                                              class="
                                                col-xl-6
                                                col-lg-6
                                                col-md-12
                                                col-sm-12
                                                mx-auto
                                              "
                                            >
                                              <div
                                                class="_rate_table_error_inner"
                                              >
                                                <div
                                                  class="
                                                    _rate_table_error_inner_email_wrap
                                                  "
                                                >
                                                  <form
                                                    class="
                                                      _rate_table_error_email_form
                                                    "
                                                  >
                                                    <h3
                                                      class="
                                                        _rate_table_error_email_title
                                                      "
                                                    >
                                                      Email Address
                                                    </h3>
                                                    <input
                                                      type="email"
                                                      class="
                                                        _rate_table_error_email_input
                                                      "
                                                    />
                                                    <button
                                                      class="
                                                        _new_rate_table_error_email_button
                                                      "
                                                    >
                                                      Get Alerted
                                                    </button>
                                                    <p
                                                      class="
                                                        _rate_table_error_email_para
                                                      "
                                                    >
                                                      By clicking "Get Alerted",
                                                      I agree to Discount's
                                                      <a
                                                        href="https://www.privacypolicies.com/live/7a254ff4-9ff4-4289-bd4b-d494ffe12626"
                                                        class="
                                                          _rate_table_error_email_para_link
                                                        "
                                                        >Privacy Policy</a
                                                      >
                                                    </p>
                                                  </form>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </transition>
                          </div>
                        </div>
                      </div>
                    </div>
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
// import Dropdown from "ant-design-vue/lib/dropdown";
// import "ant-design-vue/lib/dropdown/style/css";
// import "ant-design-vue/lib/checkbox/style/css";

export default {
  data() {
    return {
      showDrop:false,
      showDrop1:false,
      showDrop2:false,
      showDrop3:false,
      showDrop4:false,
      showDrop5:false,
      showLoading: false,
      counter: 1345,
      isSlideClick: false,
      firstName: "",
      lastName: "",
      phoneNumber: "",
      email: "",
      disclaimerModalShow: false,
      LeadSource: "Website",
      leadSourceOn: false,
      unlocked: false,
      passwordOn: false,
      disClick: false,
      text: "Purchase",
      password: "",
      isActive: 0,
      activeTab: 0,
      creditTypeValue: "580-619",
      creditHasInput: false,
      isCreditType: 580,
      loanTypeValue: "30 year",
      loanHasInput: false,
      isLoanType: 0,
      mortgageProductValue: "Conventional",
      mortgageProdHasInput: false,
      isMortgageProduct: 0,
      purchaseType: "",
      propertyTypeValue: "Single Family",
      propertyHasInput: false,
      isPropertyType: 0,
      occupencyTypeValue: "Owner Occupied",
      occupencyHasInput: false,
      isOccupencyType: 0,
      notLoaded: 2,
      isSlideClick: false,
      paymentType: "Down Payment",
      filterOption: "Add Details",
      filterClicked: false,
      isSlideOff: "Off",
      isSlideOn: "On",
      purchaseCompare: {
        compareRate: "2.99$",
        comparePoint: "0",
        compareLenderFees: "0",
      },
      refinanceAnalys: {
        currentRate: "2.99$",
        loanDate: "2015",
      },
      dropRateShow: false,
      dropPointShow: false,
      dropCurrentRateShow: false,
      dropLoanDateShow: false,
      emailModalShow: false,
      thankModalShow: false,
      trackModalShow: false,
      compareModalShow: false,
      refinanceModalShow: false,
      moneyAmount: 0,
      calculatedData: {
        purchasePrice: "0",
        loanAmount: "0",
        downPaymentAmount: "0",
        mortgageBalance: "",
      },
      isDisable: true,
      warningTxt: false,
      checkedRow: [],
      value: "",
      form: {
        request_id: 1,
        customerId: "14disc01",
        thirdPartyName: "hellodiscount",
        // licenseKey:'MortechTravis',
        emailAddress: "bbianchi@hellodiscount.com",
        propertyZip: "",
        appraisedvalue: "",
        downPayment: 0,
        leadSource: 0,
        loanpurpose: 0,
        fico: 0,
        loan_amount: 0,
        proptype: 0,
        occupancy: 0,
        loanProduct1: "30 year fixed",
        filterId: 0,
        propertyState: "",
        waiveescrow: 0,
      },
      results: [],
      authToken: "",
      jwtToken: "",
      customerId: "14disc01",
      partnerId: "77",
      privateKey: "",
      x_Api: "p04K8sROga7olHSc6EDpY1Vl4NUaN0cA8h3mIuO0",
      lastShowingIndex: 6,
      quotedRate: 1345,
      // msg: 'Welcome to Your Vue.js App'
      today: "",
      monthList: [
        "January",
        "February",
        "March",
        "April ",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
      dateTime: "",
    };
  },
  filters: {
    separate(val) {
      return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    },
  },
  methods: {
    isSlideClicked() {
      this.isSlideClick = !this.isSlideClick;
    },
    getDetails() {
      this.firstName = this.$refs.firstName.value;
      this.lastName = this.$refs.lastName.value;
      this.phoneNumber = this.$refs.phoneNumber.value;
      this.email = this.$refs.email.value;
    },
    increaseRate() {
      this.quotedRate = this.quotedRate++;
      console.log(quotedRate);
    },
    passwordClick() {
      if (!this.leadSourceOn && !this.unlocked) {
        this.passwordOn = !this.passwordOn;
      } else {
        this.leadSourceOn = true;
      }
    },
    submitPass() {
      if (this.password == "420") {
        this.leadSourceOn = true;
        this.unlocked = true;
        this.passwordOn = false;
      }
    },
    changeLeadSource(value) {
      if (value == 1000) this.LeadSource = "Landing Tree";
      if (value == 1001) this.LeadSource = "Bank Rate";
      // console.log(value, "Lead source")
      this.leadSourceOn = false;
    },
    handleButtonClick(e) {
      console.log("click left button", e);
    },
    handleMenuClick(e) {
      console.log("click", e);
    },
    async getPropertyState() {
      console.log("zipcode", this.form.propertyZip);
      const res = await this.callApi(
        "get",
        `getPropertyState?zipcode=${this.form.propertyZip}`
      );
      if (res.status == 200) {
        this.form.propertyState = res.data.state;
      } else {
        console.log("Please give a valid zipcode. ");
      }
    },
    onChangeZip() {
      if (this.timer) {
        clearTimeout(this.timer);
        this.timer = null;
      }
      this.timer = setTimeout(async () => {
        this.getPropertyState();
      }, 1000);
    },
    changeActive(t, a) {
      this.text = t;
      this.isActive = a;
      if (this.text == "Purchase") {
        this.paymentType = "Down Payment";
      } else {
        this.paymentType = "Mortgage Balance";
      }
      this.form.loanpurpose = a;
    },
    changeTab(a) {
      this.activeTab = a;
    },
    waiveEscrows(n) {
      console.log("clicked");
      if (n == 1) {
        this.form.waiveescrow = 1;
      } else {
        this.form.waiveescrow = 0;
      }
      console.log(this.form.waiveescrow, "change");
    },
    changeLoan(t, n) {
      this.loanTypeValue = t;
      this.form.loanProduct1 = t;
      this.isLoanType = n;
      this.loanHasInput = true;
      this.form.filterId = 1;
    },
    changeCredit(t, n) {
      this.creditTypeValue = t;
      this.isCreditType = n;
      this.form.fico = n;
      this.creditHasInput = true;
    },
    changeCompareRate(t, n) {
      this.purchaseCompare.compareRate = t;
    },
    changeComparePoint(t, n) {
      this.purchaseCompare.comparePoint = t;
    },
    changedropRateShow() {
      console.log(this.dropRateShow);
      this.dropRateShow = !this.dropRateShow;
      console.log(this.dropRateShow);
    },
    changedropPointShow() {
      console.log(this.dropPointShow);
      this.dropPointShow = !this.dropPointShow;
      console.log(this.dropPointShow);
    },
    changedropCurrentRateShow() {
      console.log(this.dropCurrentRateShow);
      this.dropCurrentRateShow = !this.dropCurrentRateShow;
      console.log(this.dropCurrentRateShow);
    },
    changedropLoanDateShow() {
      console.log(this.dropLoanDateShow);
      this.dropLoanDateShow = !this.dropLoanDateShow;
      console.log(this.dropLoanDateShow);
    },
    changeCurrentRate(t, n) {
      this.refinanceAnalys.currentRate = t;
    },
    changeLoanDate(t, n) {
      this.refinanceAnalys.loanDate = t;
    },
    changeMortgageProd(t, n) {
      this.mortgageProductValue = t;
      // this.isMortgageProduct = n;
      if (n == 1) {
        this.form.filterId = "FHA";
      } else if (n == 2) {
        this.form.filterId = "VA";
      } else {
        this.form.filterId = 0;
      }
      this.mortgageProdHasInput = true;
    },
    changePropertyType(t, n) {
      this.propertyTypeValue = t;
      this.isPropertyType = n;
      this.form.proptype = n;
      this.propertyHasInput = true;
    },
    changeOccupencyType(t, n) {
      this.occupencyTypeValue = t;
      this.isOccupencyType = n;
      this.form.occupancy = n;
      this.occupencyHasInput = true;
    },
    async loadResult() {
      // if(this.LeadSource == "Landing Tree") this.form.leadSource = 1000
      if (this.LeadSource == "Bank Rate") this.form.leadSource = 1001;
      this.results = [];
      let xmlContent = null;
      this.xmlError = false;
      const res = await this.callApi(
        "get",
        `getThirdPartyApiResult?request_id=${this.form.request_id}&customerId=${this.form.customerId}&thirdPartyName=${this.form.thirdPartyName}&leadSource=${this.form.leadSource}&emailAddress=${this.form.emailAddress}&propertyZip=${this.form.propertyZip}&propertyState=${this.form.propertyState}&appraisedvalue=${this.form.appraisedvalue}&loan_amount=${this.form.loan_amount}&fico=${this.form.fico}&loanpurpose=${this.form.loanpurpose}&proptype=${this.form.proptype}&filterId=${this.form.filterId}&occupancy=${this.form.occupancy}&targetPrice=-999&loanProduct1=${this.form.loanProduct1}&view=1&x-api-key=${this.x_Api}&authorizationtoken=${this.authToken}&waiveescrow=${this.form.waiveescrow}`
      );
      if (res.status == 200) {
        xmlContent = res.data;
        let parser = new DOMParser();
        let parsedContent = parser.parseFromString(xmlContent, "text/xml");
        var html = parsedContent.getElementsByTagName("quote");
        console.log(html, "html");
        for (var j = 0; j < html.length; j++) {
          let ob = {
            vendorName: "",
            rate: 0,
            apr: 0,
            monthlyPayment: 0,
            fees: 0,
            points: 0,
            tag_point: 0,
          };
          ob.vendorName = html[j].attributes[2].nodeValue;
          ob.rate = html[j].childNodes[1].attributes[0].nodeValue;
          ob.apr = html[j].childNodes[1].attributes[3].nodeValue;
          ob.monthlyPayment = html[j].childNodes[1].attributes[10].nodeValue;
          let points = html[j].childNodes[1].attributes[1].nodeValue;
          if (points == "0.000") {
            let loan = this.form.loan_amount;
            loan = this.removeComma(loan);
            console.log(
              html[j].childNodes[1].childNodes[13].childNodes[3].childNodes[0]
                .data,
              j
            );
            ob.points =
              html[
                j
              ].childNodes[1].childNodes[13].childNodes[3].childNodes[0].data;
            ob.tag_point = ((ob.points / loan) * 100).toFixed(3);
            console.log("ob.points", ob.points);
          } else {
            let loan = this.form.loan_amount;
            loan = this.removeComma(loan);
            ob.points = parseFloat((points / 100) * loan).toFixed(4);
            ob.tag_point = ((ob.points / loan) * 100).toFixed(3);
            console.log("modified ob.points", ob.points);
          }
          if (ob.tag_point >= 1.5 || ob.points == 0) {
            console.log("greater then ", ob.tag_point);
          } else {
            console.log("hello", ob.tag_point);
            this.results.push(ob);
          }
          console.log(ob.vendorName, "vendor name");
        }
        console.log(this.results, "RESULT");
      }
    },
    async getJWT() {
      const res = await this.callApi("get", "getPMEToken");
      console.log("hello from auth ", res);

      if (res.status == 200) {
        this.privateKey = res.data;
      }
      var custId = this.customerId;
      var partnerId = this.partnerId;
      var navigator = {};
      var window = {};

      var currentTime = +new Date();
      var issuedAtTimeSeconds = currentTime / 1000;
      var expirationTimeSeconds = currentTime / 1000 + 3600;

      var header = { alg: "RS256", typ: "JWT" };
      var payload = {
        customerId: custId,
        partnerId: partnerId,
        iat: Math.ceil(issuedAtTimeSeconds),
      };

      var privateKey = this.privateKey;

      var sHeader = JSON.stringify(header);
      var sPayload = JSON.stringify(payload);

      var sJWT = KJUR.jws.JWS.sign(header.alg, sHeader, sPayload, privateKey);

      this.jwtToken = sJWT;
      //   console.log(this.privateKey, "aekhdgb")
      //   let a = await  KJUR.jws.JWS.sign(header.alg, sHeader, sPayload, this.privateKey);
      //     console.log(a)
      console.log("sJWT", sJWT);
    },
    async getAuthToken() {
      
      const res = await this.$axios.get(`https://api.mortech-inc.com/auth/`, {
        mode: "cors",
        useCredentails: true,
        headers: {
          "x-api-key": "p04K8sROga7olHSc6EDpY1Vl4NUaN0cA8h3mIuO0",
          authorizationtoken: `Bearer ${this.jwtToken}`,
        },
      });
      if (res.status == 200) {
        console.log(res.data);
        this.authToken = res.data.accesstoken;
      }
    },

    async seeLiveRates(s) {
      if (!this.form.propertyZip) return alert("Postal code can't be empty!");
      this.form.appraisedvalue = this.calculatedData.purchasePrice;
      this.form.loan_amount = this.calculatedData.loanAmount;
      this.form.downPayment = this.calculatedData.downPaymentAmount;
      this.notLoaded = 2;
      // await Promise.all([this.getJWT(),this.getAuthToken(), this.loadResult()]);
      const p1 = new Promise((resolve) => {
        setTimeout(() => {
          this.getJWT();
          resolve();
        }, 1000);
      });
      const p2 = new Promise((resolve) => {
        setTimeout(() => {
          this.getAuthToken();
          resolve();
        }, 2000);
      });
      const p3 = new Promise((resolve) => {
        setTimeout(() => {
          this.loadResult();
          resolve();
        }, 5000);
      });
      await Promise.all([p1, p2, p3]).then(() => {
        console.log("Done");
      });
      this.counter++;
      this.$confetti.start({
        particles: [
          {
            type: "rect",
            size: 4,
            dropRate: 8,
          },
        ],
        defaultColors: ["#0051F9"],
        particlesPerFrame: 0.8,
        windSpeedMax: 2,
      });
      setTimeout(() => {
        this.showLoading = false;
        this.$confetti.stop();
        this.notLoaded = 1;
        this.warningTxt = true;
      }, 5000);
    },
    refinanceOnChange() {
      if (this.form.loanpurpose == 1) {
        this.form.loanpurpose = 2;
      } else {
        this.form.loanpurpose = 1;
      }

      console.log(e);
      //   if(e.target.checked){ this.form.loanpurpose = 2}
      //   else{
      //       this.form.loanpurpose = 1
      //   }
      //    console.log(`checked = ${e.target.checked}`);
    },
    onChange(e) {
      console.log(`checked = ${e.target.checked}`);
    },
    isSlideClicked() {
      this.isSlideClick = !this.isSlideClick;
    },
    changeFilter(t) {
      this.filterOption = t;
      this.filterClicked = !this.filterClicked;
      if (!this.filterClicked) {
        this.filterOption = "Add Details";
      } else {
        this.filterOption = "Less Details";
      }
    },
    emailModalToggle() {
      this.emailModalShow = !this.emailModalShow;
    },
    trackModalToggle() {
      if (this.isSlideClick) {
        this.trackModalShow = !this.trackModalShow;
      } else {
        this.trackModalShow = false;
      }
    },
    trackModalClose() {
      this.trackModalShow = false;
      // this.isSlideClick = false;
    },
    thankModalToggle() {
      this.thankModalShow = !this.thankModalShow;
      this.emailModalShow = false;
      this.trackModalShow = false;
    },
    thankModalClose() {
      this.thankModalShow = !this.thankModalShow;
    },
    compareModalToggle() {
      this.compareModalShow = !this.compareModalShow;
    },
    compareModalClose() {
      this.compareModalShow = false;
    },
    refinanceModalToggle() {
      this.refinanceModalShow = !this.refinanceModalShow;
    },
    refinanceModalClose() {
      this.refinanceModalShow = false;
    },
    separator(val) {
      val = val
        .toString()
        .replace(/\D/g, "")
        .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
      return val;
    },
    removeComma(val) {
      val = val.replace(/\,/g, ""); // 1125, but a string, so convert it to number
      val = parseInt(val, 10);
      return val;
    },
    checkNan(val) {
      if (Number.isNaN(val)) {
        val = 0;
        return val;
      } else {
        return val;
      }
    },
    lenderFeesInput() {
      this.purchaseCompare.compareLenderFees = this.separator(
        this.purchaseCompare.compareLenderFees
      );
    },
    comma() {
      let balance = this.calculatedData.loanAmount;
      balance = this.removeComma(balance);
      balance = this.checkNan(balance);
      this.calculatedData.loanAmount = this.separator(
        this.calculatedData.loanAmount
      );
    },
    calculate() {
      let purchase = this.calculatedData.purchasePrice;
      let downPay = this.calculatedData.downPaymentAmount;
      purchase = this.removeComma(purchase);
      let loan = purchase - purchase * (downPay / 100);
      // let loan = purchase - ((purchase * downPay)/100);
      this.calculatedData.loanAmount = loan;
      this.calculatedData.loanAmount = this.separator(loan);
      this.calculatedData.purchasePrice = this.separator(purchase);
    },
    calculatePercent() {
      let loan = this.calculatedData.loanAmount;
      loan = this.removeComma(loan);
      let purchase = this.calculatedData.purchasePrice;
      purchase = this.removeComma(purchase);
      // let downPay = (loan*100)/purchase;
      let downPay = 1 - loan / purchase;
      downPay = this.checkNan(downPay);
      // this.calculatedData.downPaymentAmount = 100 - parseFloat(downPay).toFixed(0);
      this.calculatedData.downPaymentAmount =
        100 * parseFloat(downPay).toFixed(2);
      this.calculatedData.loanAmount = this.separator(
        this.calculatedData.loanAmount
      );
    },
    checkCompare() {
      if (this.checkedRow.length == 3) {
        console.log("Least 3 items Selected");
      } else {
        alert("You must select at least 3 items from below!");
      }
    },
  },
  mounted() {
    this.today = new Date();
    var today = this.today;
    var month = today.getMonth();
    var monthlist = this.monthList;
    var date = today.getDate() + ", " + today.getFullYear();
    this.dateTime = monthlist[month] + " " + date;

    // var modal = document.querySelector("._diclaimer_modal");
    // var trigger = document.querySelector("._disclaimer");
    // var closeButton = document.querySelector("._diclaimer_modal_close_btn");

    // function toggleModal() {
    //     modal.classList.toggle("_diclaimer_modal_show");
    // }
    // trigger.addEventListener("click", toggleModal);
    // closeButton.addEventListener("click", toggleModal);
  },
  async created() {
    this.removeComma(this.calculatedData.loanAmount);
    const res = await this.callApi("get", `auth/getCounter`);
    if (res.status == 200) {
      this.counter = res.data.counter;
    }
  },
};
</script>
<style>
.ant-dropdown-trigger {
  font-family: Poppins;
  font-weight: 500;
  color: #121212;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px 35px;
  cursor: pointer;
  border: 1px solid #dedede;
  transition: 0.2s all ease;
  -webkit-transition: 0.2s all ease;
  height: 43px;
}
</style>
