<template>

      <div class="_dashboard_people_wrap_inner">
          <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
              <div class="_dashboard_btn_top">
                 <ul class="_dashboard_people_top_inner_list">
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link _dashboard_people_top_inner_link_active">
                              All
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                              New
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                              Reaching out
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                              Responded
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                            Application
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                           Inprocess
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                              Closed
                          </button>
                      </li>
                      <li class="_dashboard_people_top_inner_item">
                          <button type="submit" class="_dashboard_people_top_inner_link">
                              No Sale
                          </button>
                      </li>
                  </ul>
                <div class="_dashboard_btn_top_area">
                  <div class="_dashboard_import_btn">
                    <button class="_dashboard_import_btn_link">
                      Import List
                    </button>
                  </div>
                  <div class="_dashboard_people_add_prsn">
                  <button class="_dashboard_people_add_prsn_btn" @click="modal1 = true">
                    Add Person
                  </button>
                  <Modal class="_dashboard_people_add_prsn_modal"
                      style='margin-left: 1645px; margin-top: 90px;'
                      v-model="modal1"
                       >
                        <div class="_dashboard_pepl_crd">
                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              First Name
                            </p>
                            <input placeholder="First Name" v-model="new_user.first_name" type="text" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Last Name
                            </p>
                            <input placeholder="Last Name" v-model="new_user.last_name" type="text" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Phone
                            </p>
                            <input placeholder="Contact" v-model="new_user.contact" type="number" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Email
                            </p>
                            <input placeholder="Email" v-model="new_user.email" type="email" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Loan Purpose
                            </p>
                            <select aria-label="Select Purpose" v-model="new_user.loan_purpose" class="_dashboard_pepl_crd_itm_inpt">
                              <option selected disabled>Select Purpose</option>
                              <option value="Refinance">Refinance</option>
                              <option value="Purchase">Purchase</option>
                            </select>
                          </div>
                        </div>
                        <div slot="footer">
                            <div class="_dashboard_pepl_crd_btm">
                              <button @click="addNewUser" :disabled="is_loading" class="_dashboard_pepl_crd_btn">
                                {{is_loading? 'Please wait..': 'Add Client'}}
                              </button>
                            </div>
                        </div>
                  </Modal>
                  <Modal class="_dashboard_people_add_prsn_modal"
                      style='margin-left: 1645px; margin-top: 90px;'
                      v-model="modal2"
                       >
                        <div class="_dashboard_pepl_crd">
                          <p v-if="people[editIndex]">Are you sure to delete <span v-if="people[editIndex].first_name">{{ people[editIndex].first_name }} </span> <span v-if="people[editIndex].last_name">{{ people[editIndex].last_name }}</span>?</p>
                        </div>
                        <div slot="footer">
                            <div class="_dashboard_pepl_crd_btm">
                              <button @click="deletePeople" :disabled="is_deleting" class="_dashboard_pepl_crd_btn">
                                {{is_deleting? 'Please wait..': 'Yes'}}
                              </button>
                            </div>
                        </div>
                  </Modal>
                  </div>
                </div>
              </div>
              <div class="_dashboard_people_top_inner">
                <!-- <div class="_dashboard_people_top_inner">
                  <div class="_dashboard_main_top_select _mar_lr">
                  <select
                    class="form-select _top_select _people_top_drop"
                    aria-label="Default select example"
                  >
                    <option value="{1}">All</option>
                    <option value="{2}">New</option>
                    <option value="{3}">Attempting Contact</option>
                    <option value="{4}">Responded</option>
                    <option value="{5}">Active</option>
                    <option value="{6}">Rate Alert</option>
                    <option value="{7}">Pre-Approved</option>
                    <option value="{8}">In Process</option>
                    <option value="{9}">Closed</option>
                    <option value="{10}">No Sale</option>
                  </select>
                </div>
                <div class="_dashboard_main_top_select _mar_lr">
                  <select
                    class="form-select _top_select"
                    aria-label="Default select example"
                  >
                    <option value="{1}">Today</option>
                    <option value="{2}">This Week</option>
                    <option value="{3}">This Month</option>
                    <option value="{3}">This Year</option>
                  </select>
                </div>
                </div> -->
                <div class="_dashboard_main_top_left">
                  <!-- <div class="_dashboard_main_top_select _mar_lr">
                    <select
                      class="form-select _top_select"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Today</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                  </div> -->
                  <div class="_dashboard_people_right_area">
                    <div class="_dashboard_main_top_select _dashboard_main_top_select_new _mar_lr">
                    <select
                      class="form-select _top_select _top_select_new"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Assingned to</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                    </div>
                    <div class="_dashboard_main_top_select _dashboard_main_top_select_new _mar_lr">
                    <select
                      class="form-select _top_select _top_select_new"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Date Created</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                    </div>
                    <div class="_dashboard_main_top_select _dashboard_main_top_select_new _mar_lr">
                    <select
                      class="form-select _top_select _top_select_new"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Lead Source</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                    </div>
                     <div class="_dashboard_main_top_select _dashboard_main_top_select_new _mar_lr">
                    <select
                      class="form-select _top_select _top_select_new"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Agent</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                    </div>
                     <div class="_dashboard_main_top_select _dashboard_main_top_select_new _mar_lr">
                    <select
                      class="form-select _top_select _top_select_new"
                      aria-label="Default select example"
                    >
                      <option value="{1}">Loan Officer</option>
                      <option value="{2}">This Week</option>
                      <option value="{3}">This Month</option>
                      <option value="{3}">This Year</option>
                    </select>
                    </div>
                  </div>
                </div>
                <!-- <div class="_dashboard_people_add_btn">

                    <button class="_dashboard_people_add_prsn" type="submit" @click="$router.push(`/people/addPeople`)">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                        <img src="../../assets/images/plus.svg" alt="Image" class="_plus">
                        Add Person
                    </button>

                </div> -->
                <!-- <div class="_dashboard_people_add_prsn">
                  <button class="_dashboard_people_add_prsn_btn" @click="modal1 = true">
                    Add Person
                  </button>
                  <Modal class="_dashboard_people_add_prsn_modal"
                      style='margin-left: 1645px; margin-top: 90px;'
                      v-model="modal1"
                       >
                        <div class="_dashboard_pepl_crd">
                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              First Name
                            </p>
                            <input placeholder="First Name" v-model="new_user.first_name" type="text" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Last Name
                            </p>
                            <input placeholder="Last Name" v-model="new_user.last_name" type="text" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Phone
                            </p>
                            <input placeholder="Contact" v-model="new_user.contact" type="number" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Email
                            </p>
                            <input placeholder="Email" v-model="new_user.email" type="email" class="_dashboard_pepl_crd_itm_inpt">
                          </div>

                          <div class="_dashboard_pepl_crd_itm">
                            <p class="_dashboard_pepl_crd_itm_titl">
                              Loan Purpose
                            </p>
                            <select aria-label="Select Purpose" v-model="new_user.loan_purpose" class="_dashboard_pepl_crd_itm_inpt">
                              <option selected disabled>Select Purpose</option>
                              <option value="Refinance">Refinance</option>
                              <option value="Purchase">Purchase</option>
                            </select>
                          </div>
                        </div>
                        <div slot="footer">
                            <div class="_dashboard_pepl_crd_btm">
                              <button @click="addNewUser" :disabled="is_loading" class="_dashboard_pepl_crd_btn">
                                {{is_loading? 'Please wait..': 'Add Client'}}
                              </button>
                            </div>
                        </div>
                  </Modal>
                  <Modal class="_dashboard_people_add_prsn_modal"
                      style='margin-left: 1645px; margin-top: 90px;'
                      v-model="modal2"
                       >
                        <div class="_dashboard_pepl_crd">
                          <p v-if="people[editIndex]">Are you sure to delete <span v-if="people[editIndex].first_name">{{ people[editIndex].first_name }} </span> <span v-if="people[editIndex].last_name">{{ people[editIndex].last_name }}</span>?</p>
                        </div>
                        <div slot="footer">
                            <div class="_dashboard_pepl_crd_btm">
                              <button @click="deletePeople" :disabled="is_deleting" class="_dashboard_pepl_crd_btn">
                                {{is_deleting? 'Please wait..': 'Yes'}}
                              </button>
                            </div>
                        </div>
                  </Modal>
                </div> -->
              </div>

              <!-- <div class="_dashboard_people_table">
                <div class="_dshbrd_pepl_tble_hdng">
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Lead ID / Purpose</h4>
                    </div>
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Client Name</h4>
                        <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Lead Status</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Campagin</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Lead Source / Agent</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                     <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Loan Amount Requested</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                    <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title"> Assigned Loan Officer</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                     <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Created Date</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                     <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Last Response</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                    </div>
                     <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Action</h4>
                    </div>
                </div>
                <div class="_people_data"  v-for="(item, index) in people"
                 :key="index">
                    <div class="_dashboard_pepl_data_info">
                        <div class="_dashboard_employee_data_one">
                          <p class="_employee_name_num">
                            000011123
                          </p>
                            <h4 class="_employee_name">{{item.first_name}} {{item.last_name}}</h4>
                        </div>
                    </div>

                    <div class="_dashboard_pepl_data_info">
                        <p class="_dshbrd_pepl_tbl_txt1">BankRate</p>
                    </div>

                    <div class="_dashboard_pepl_data_info">
                        <p class="_dshbrd_pepl_tbl_txt1">New</p>
                    </div>

                    <div class="_dashboard_pepl_data_info">
                      <p class="_dshbrd_pepl_tbl_txt1">90 Day Follow-up</p>
                        <h4>  {{ item.date_of_birth | funeralDateFormat }}</h4>
                    </div>

                    <div class="_dashboard_pepl_data_info">
                      <p class="_dshbrd_pepl_tbl_txt1">Marathon Realty</p>
                      <p class="_dshbrd_pepl_tbl_txt2">Constance Kelley</p>
                        <h4>  {{ item.date_of_birth | funeralDateFormat }}</h4>
                    </div>

                     <div class="_dashboard_pepl_data_info">
                      <p class="_dshbrd_pepl_tbl_txt1">
                        $50000
                      </p>
                    </div>

                     <div class="_dashboard_pepl_data_info">
                        <p class="_dshbrd_pepl_tbl_txt1">BankRate</p>
                    </div>
                    <div class="_dashboard_pepl_data_info">
                        <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span> </p>
                     </div>
                     <div class="_dashboard_pepl_data_info">
                        <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span></p>
                    </div>
                    <div class="_employee_btn">
                        <button type="submit" class="_employee_btn_link" @click="$router.push(`/people/details?id=${item.id}`)">
                            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="7" fill="none" viewBox="0 0 23 7">
                                <path fill="#000" d="M2.83.748c-.743 0-1.367.252-1.871.756S.203 2.632.203 3.376c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872A2.5 2.5 0 0 0 2.83.748Zm8.684 0c-.744 0-10.368.252-1.872.756s-.756 1.128-.756 1.872c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872a2.5 2.5 0 0 0-1.836-.756Zm8.684 0c-.744 0-1.368.252-1.872.756s-.756 1.128-.756 1.872c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872a2.5 2.5 0 0 0-1.836-.756Z"/>
                            </svg>
                        </button>
                    </div>
                </div>
              </div> -->

              <div class="_dashboard_people_table">
                <table>
                  <thead>
                    <th>
                        <div class="_dshbrd_pepl_tble_top">
                            <h4 class="_dshbrd_pepl_title">Lead ID / Purpose</h4>
                        </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Client Name</h4>
                        <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Lead Status</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Campagin</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Lead Source / Agent</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Loan Amount Requested</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title"> Assigned Loan Officer</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                        <h4 class="_dshbrd_pepl_title">Created Date</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                     <th>
                       <div class="_dshbrd_pepl_tble_top">
                      <h4 class="_dshbrd_pepl_title">Last Response</h4>
                         <p class="_dshbrd_pepl_tble_icon">
                          <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41426 31.586C4.15433 32.8459 5.04666 35.0002 6.82847 35.0002H41.1716C42.9534 35.0002 43.8457 32.8459 42.5858 31.586L25.4142 14.4144C24.6332 13.6334 23.3668 13.6334 22.5858 14.4144L5.41426 31.586Z" fill="black"/>
                              </svg>
                          </span>
                           <span>
                              <svg width="14" height="14" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.41422 16.4142C4.15429 15.1543 5.04662 13 6.82843 13H41.1716C42.9534 13 43.8457 15.1543 42.5858 16.4142L25.4142 33.5858C24.6332 34.3668 23.3668 34.3668 22.5858 33.5858L5.41422 16.4142Z" fill="black"/>
                              </svg>
                          </span>
                        </p>
                          </div>
                    </th>
                    <th>
                      <div class="_dshbrd_pepl_tble_top">
                       <h4 class="_dshbrd_pepl_title">Action</h4>
                         </div>
                    </th>
                  </thead>
                  <tbody>
                    <tr v-for="(item, index) in people" :key="index">
                      <td>
                         <div class="_dashboard_pepl_data_info">
                            <div class="_dashboard_employee_data_one">
                              <!--/people/details?id=${item.id}  -->
                              <p  @click="$router.push(`/conversations`)" class="_employee_name_num">
                               {{item.Lead_id}}
                              </p>
                                 <p class="_dshbrd_pepl_tbl_txt1"> {{item.loan_purpose}}</p>
                           </div>
                      </div>
                      </td>
                       <td>
                        <div class="_dashboard_pepl_data_info">
                            <p class="_dshbrd_pepl_tbl_txt1">{{item.first_name}} {{item.last_name}}</p>
                        </div>
                      </td>
                       <td>
                          <div class="_dashboard_pepl_data_info _dashboard_pepl_data_info_new">
                              <div class="_dashboard_pepl_data_info_circle"></div>
                              <p class="_dshbrd_pepl_tbl_txt1">New</p>
                          </div>
                      </td>
                       <td>
                        <div class="_dashboard_pepl_data_info">
                          <p class="_dshbrd_pepl_tbl_txt1">90 Day Follow-up</p>
                            <!-- <h4>  {{ item.date_of_birth | funeralDateFormat }}</h4> -->
                        </div>
                      </td>
                       <td>
                          <div class="_dashboard_pepl_data_info">
                            <p class="_dshbrd_pepl_tbl_txt1">Marathon Realty</p>
                            <p class="_dshbrd_pepl_tbl_txt2">Constance Kelley</p>
                              <!-- <h4>  {{ item.date_of_birth | funeralDateFormat }}</h4> -->
                          </div>
                      </td>
                       <td>
                        <div class="_dashboard_pepl_data_info">
                          <p class="_dshbrd_pepl_tbl_txt1">
                            $50000
                          </p>
                        </div>
                      </td>
                       <td>
                        <div class="_dashboard_pepl_data_info">
                            <p class="_dshbrd_pepl_tbl_txt1">BankRate</p>
                        </div>
                      </td>
                       <td>
                          <div class="_dashboard_pepl_data_info">
                            <!-- <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span> </p> -->
                            <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span> </p>
                        </div>
                      </td>
                       <td>
                          <div class="_dashboard_pepl_data_info">
                              <!-- <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span></p> -->
                              <p class="_dshbrd_pepl_tbl_txt1"><span>{{item.created_at | luxon({ format: "dd/MM/yyyy" }) }}</span></p>
                          </div>
                      </td>
                      <td>
                        <div class="_employee_btn">
                           <button class="_employee_btn_link">
                            <svg width="20" height="20" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M31 4V11C31 12.1046 31.8954 13 33 13H41M31 4H11C8.79086 4 7 5.79086 7 8V40C7 42.2091 8.79086 44 11 44H37C39.2091 44 41 42.2091 41 40V13L31 4ZM31 4H32.1666C33.2385 4 34.2655 4.43021 35.0174 5.19417L39.8508 10.1051C40.5873 10.8534 41 11.8611 41 12.911V13L31 4Z" stroke="black" stroke-width="3"/>
                              <path d="M13 32H28M13 16H24H13ZM13 24H35H13Z" stroke="black" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                          </button>

                          <button class="_employee_btn_link" @click="deletePopUp(item.id, index)">
                              <svg width="13" height="13" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M37.8452 5.51886L5.41022 38.1375C4.63138 38.9207 4.63138 40.1906 5.41022 40.9739L6.82043 42.3921C7.59927 43.1753 8.86202 43.1753 9.64086 42.3921L42.0758 9.77346C42.8547 8.99021 42.8547 7.72031 42.0758 6.93706L40.6656 5.51886C39.8868 4.73561 38.624 4.73561 37.8452 5.51886Z" fill="black"/>
                              <path d="M10.1548 5.51886L42.5898 38.1375C43.3686 38.9207 43.3686 40.1906 42.5898 40.9739L41.1796 42.3921C40.4007 43.1753 39.138 43.1753 38.3591 42.3921L5.92417 9.77346C5.14533 8.99021 5.14533 7.72031 5.92417 6.93706L7.33438 5.51886C8.11323 4.73561 9.37598 4.73561 10.1548 5.51886Z" fill="black"/>
                              </svg>
                         </button>

                          <button type="submit" class="_employee_btn_link" @click="$router.push(`/conversations`)">
                              <svg xmlns="http://www.w3.org/2000/svg" width="23" height="7" fill="none" viewBox="0 0 23 7">
                                  <path fill="#000" d="M2.83.748c-.743 0-1.367.252-1.871.756S.203 2.632.203 3.376c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872A2.5 2.5 0 0 0 2.83.748Zm8.684 0c-.744 0-10.368.252-1.872.756s-.756 1.128-.756 1.872c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872a2.5 2.5 0 0 0-1.836-.756Zm8.684 0c-.744 0-1.368.252-1.872.756s-.756 1.128-.756 1.872c0 .744.252 1.368.756 1.872s1.128.756 1.872.756a2.5 2.5 0 0 0 1.836-.756c.504-.504.756-1.128.756-1.872 0-.744-.252-1.368-.756-1.872a2.5 2.5 0 0 0-1.836-.756Z"/>
                              </svg>
                          </button>
                      </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
      </div>

</template>
<script>
import moment from "moment";
export default {
  middleware: "auth",
  data() {
    return {
      modal1:false,
      modal2:false,
      is_deleting:false,
      is_loading:false,
      people: [],
      new_user:{
        first_name:'',
        last_name:'',
        contact:'',
        birthday:'',
        email:'',
        loan_purpose:'Select Purpose'
      },
      editIndex:-1,
      editId:-1,
    };
  },

    filters: {
    funeralDateFormat(date) {
      return moment(date).format("LL");
    },
  },

  methods: {
    deletePopUp(id, index){
      this.editIndex =index
      this.editId =id
      this.modal2 = true
    },
    async deletePeople(){
      this.is_deleting = true
      const res = await this.callApi("post", `/people/deletePeople`, {id: this.editId});
      if(res.status == 200){
        this.people.splice(this.editIndex, 1)
      }
      this.is_deleting = false
      this.modal2 = false
    },
    padLeadingZeros(num, size) {
        var s = num+"";
        while (s.length < size) s = "0" + s;
        return s;
    },
    async getAllPeople() {
      const res = await this.callApi("get", `/people/getPeople`);
      if (res.status == 200) {
        this.people = res.data.data;
        for (let item of this.people){
          item.Lead_id = this.padLeadingZeros(item.id, 10);
         }
      }
    },
    async addNewUser() {
      if(this.new_user.first_name.trim()== "") return this.i("First name is required")
      if(this.new_user.last_name.trim()== "") return this.i("Last name is required")
      if(this.new_user.contact.length < 5 ) return this.i("Phone is required")
      if ( this.new_user.email == "")  return this.i("Email is required")
      if(this.new_user.loan_purpose == 'Select Purpose') return this.i("Please select loan purpose")


      this.is_loading = true
      const res = await this.callApi("post", `/people/addPeople`, this.new_user);
      if (res.status == 200) {
        this.clearNewUser();
        this.modal1 = false
        this.people.push(res.data)
      }
      this.is_loading = false
    },

    clearNewUser() {
      (this.new_user.first_name = ""),
        (this.new_user.last_name = ""),
        (this.new_user.phone = ""),
        (this.new_user.email = ""),
        (this.new_user.birthday = "");
    },
  },
  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", 'people');
    this.getAllPeople();
  },

}

</script>
