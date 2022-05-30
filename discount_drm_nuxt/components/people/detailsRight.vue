<template>
    <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12">
        <div class="_conversation_client_box">
            <div class="_conversation_client_close">
                <button type="submit" @click="closePopup">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="#333" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10zM15 9l-6 6M9 9l6 6"></path>
                    </svg>
                </button>
            </div>
            <div class="_conversation_client_des">
                <p>Client</p>
                <h4>Sussan Smithson</h4>
                <ul class="_conversation_client_des_list">
                    <!-- <li>
                        <p>Assigned Conversationlist : <span> Blake Bianchi</span></p>
                    </li> -->
                    <li>
                        <p>Assigned Loan Officer : <span> Blake Bianchi</span></p>
                    </li>
                    <li>
                        <p>Assigned Realtor : <span>  Colette Chambers</span></p>
                    </li>
                    <li>
                        <p>Loan Purpose  : <span v-on:click="showDrop1 = !showDrop1">  {{loanPurpose}}</span></p>
                          <div v-if="showDrop1" class="_loan_purpose_dropdown">
                              <ul>
                                <li @click="selectLoanPurpose('Purchase')">
                                    <a href="#0">Purchase</a>
                                </li>
                                <li @click="selectLoanPurpose('Refinance')">
                                    <a href="#0">Refinance</a>
                                </li>
                              </ul>
                          </div>
                    </li>
                    <li class="_bank_rate_list">
                        <p>Lead Source  : <span v-on:click="showDrop3 = !showDrop3" class="_coversation_span"> {{leadSource}}</span></p>
                        <div v-if="showDrop3" class="_bank_rate_list_dropdown">
                            <ul>
                                <li @click="selectLeadSource('Zillow')" class="_bank_list">
                                    <a href="#0">Zillow</a>
                                </li>
                                <li @click="selectLeadSource('Landing Tree')" class="_bank_list">
                                    <a href="#0">Landing Tree</a>
                                </li>
                                <li @click="selectLeadSource('Bank Rate')" class="_bank_list">
                                    <a href="#0">Bank Rate</a>
                                </li>
                                <li @click="selectLeadSource('Free Rate Update')" class="_bank_list">
                                    <a href="#0">Free Rate Update</a>
                                </li>
                                <li @click="selectLeadSource('Billboard')" class="_bank_list">
                                    <a href="#0">Billboard</a>
                                </li>
                                <li @click="selectLeadSource('Mailer')" class="_bank_list">
                                    <a href="#0">Mailer</a>
                                </li>
                                <li @click="selectLeadSource('Radio')" class="_bank_list">
                                    <a href="#0">Radio</a>
                                </li>
                                <li @click="selectLeadSource('Self Sourced')" class="_bank_list">
                                    <a href="#0">Self Sourced</a>
                                </li>
                                <li  >
                                    <button type="button">Add New</button>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="_conversation_link_group">
                            <div class="_conversation_list_btn">
                                <p>Rate Alert :</p>
                                <label class="switch">
                                    <input type="checkbox" defaultchecked="">
                                    <span class="slider round">
                                </span></label>
                            </div>
                            <div class="_conversation_link_icon">
                                <button type="submit">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                        <path stroke="#40D790" stroke-linecap="round" stroke-linejoin="round" d="M7.333 2.667H2.667A1.333 1.333 0 001.333 4v9.334a1.333 1.333 0 001.334 1.333H12a1.333 1.333 0 001.333-1.333V8.667"></path>
                                        <path stroke="#40D790" stroke-linecap="round" stroke-linejoin="round" d="M12.333 1.667a1.415 1.415 0 012 2L8 10.001l-2.667.666L6 8l6.333-6.333z"></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </li>
                </ul>
                <hr>
                <div class="_conversation_client_area">
                    <ul>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#ffff" d="M19.41 13c-.22 0-.45-.07-.67-.12-.445-.1-.883-.23-1.31-.39a2 2 0 00-2.48 1l-.22.46a13.17 13.17 0 01-2.67-2 13.167 13.167 0 01-2-2.67l.46-.21a2 2 0 001-2.48 10.47 10.47 0 01-.39-1.32c-.05-.22-.09-.45-.12-.67a3 3 0 00-3-2.49H5a3 3 0 00-2.24 1 3 3 0 00-.73 2.4 19.07 19.07 0 005.41 11 19.07 19.07 0 0011 5.41c.13.01.26.01.39 0a3 3 0 002.74-1.773c.172-.386.26-.804.26-1.227v-3A3 3 0 0019.41 13zm.49 6a1 1 0 01-.712.957 1 1 0 01-.438.033 17.16 17.16 0 01-9.87-4.84A17.16 17.16 0 014 5.25a1 1 0 01.59-1.065A1 1 0 015 4.1h3a1 1 0 011 .78c0 .27.09.55.15.82a11 11 0 00.46 1.54l-1.4.66a1 1 0 00-.52.56 1 1 0 000 .76 14.49 14.49 0 007 7 1 1 0 00.76 0 1 1 0 00.56-.52l.63-1.4a12.41 12.41 0 002.39.61 1 1 0 01.78 1L19.9 19zM14 2h-.7a1.004 1.004 0 00.17 2H14a6 6 0 016 6v.53a1 1 0 00.91 1.08h.08a1 1 0 001-.91V10A8 8 0 0014 2zm2 8a1 1 0 102 0 4 4 0 00-4-4 1 1 0 100 2 2 2 0 012 2z"></path>
                                </svg>
                            </button>
                            <p>Call</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="21" fill="none" viewBox="0 0 16 21">
                                    <path fill="#ffff" d="M15.89 8.55A1 1 0 0015 8h-5V2A1 1 0 008.691.998a1 1 0 00-.501.362l-8 11a1 1 0 00-.08 1A1 1 0 001 14h5v6a1 1 0 001.454.892 1 1 0 00.356-.302l8-11a1 1 0 00.08-1.04zM8 16.92V13a1 1 0 00-1-1H3l5-6.92V9a1 1 0 001 1h4l-5 6.92z"></path>
                                  </svg>
                                </button>
                                <p>Task</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="18" fill="none" viewBox="0 0 22 18">
                                    <path fill="#ffff" d="M11.3 9.22A4.92 4.92 0 0013 5.5a5 5 0 00-10 0 4.92 4.92 0 001.7 3.72A8 8 0 000 16.5a1 1 0 102 0 6 6 0 1112 0 1 1 0 002 0 8 8 0 00-4.7-7.28zM8 8.5a3 3 0 110-6 3 3 0 010 6zm9.74.32A5 5 0 0014 .5a1 1 0 100 2 3 3 0 013 3 3 3 0 01-1.5 2.59 1 1 0 00-.05 1.7l.39.26.13.07a7 7 0 014 6.38 1 1 0 002 0 9 9 0 00-4.23-7.68z"></path>
                                </svg>
                            </button>
                            <p>Assign</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="none" viewBox="0 0 22 22">
                                    <path fill="#ffff" d="M10.07 5.12A3.48 3.48 0 0111 5a4 4 0 014 4v1.34a1 1 0 002 0V9a6 6 0 00-5-5.91V2a1 1 0 00-2 0v1.1l-.45.08a1.004 1.004 0 10.52 1.94zm10.64 14.17l-18-18a1.004 1.004 0 10-1.42 1.42l4.12 4.11A6 6 0 005 9v3.18A3 3 0 003 15v2a1 1 0 001 1h3.14a4 4 0 007.72 0h1.73l2.7 2.71a1.002 1.002 0 001.639-.325 1 1 0 00-.219-1.095zM7 9a3.31 3.31 0 010-.55L10.59 12H7V9zm4 10a2 2 0 01-1.72-1h3.44A2 2 0 0111 19zm-6-3v-1a1 1 0 011-1h6.59l2 2H5z"></path>
                                </svg>
                            </button>
                            <p>No Sale</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="20" fill="none" viewBox="0 0 16 20">
                                    <path fill="#ffff" d="M13 7H5V5a3 3 0 015.12-2.13c.376.384.645.86.78 1.38a1 1 0 101.94-.5 5.09 5.09 0 00-1.31-2.29A5 5 0 003 5v2a3 3 0 00-3 3v7a3 3 0 003 3h10a3 3 0 003-3v-7a3 3 0 00-3-3zm1 10a1 1 0 01-1 1H3a1 1 0 01-1-1v-7a1 1 0 011-1h10a1 1 0 011 1v7z"></path>
                                </svg>
                            </button>
                            <p>Send Quote</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="5" height="18" fill="none" viewBox="0 0 5 18">
                                    <path fill="#ffff" d="M4.246.938V18H.742V.937h3.504z"></path>
                                </svg>
                            </button>
                            <p>One-Click Insurance</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="18" fill="none" viewBox="0 0 17 18">
                                    <path fill="#ffff" d="M8.398 3.855L3.758 18H.02L6.36.937h2.378l-.34 2.918zM12.254 18L7.602 3.855 7.227.938h2.402L16.004 18h-3.75zm-.211-6.352v2.754H3.031v-2.754h9.012z"></path>
                                </svg>
                            </button>
                            <p>Agent Match</p>
                        </li>
                        <li>
                            <button type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20" fill="none" viewBox="0 0 18 20">
                                    <path fill="#ffff" d="M17 4h-4V3a3 3 0 00-3-3H8a3 3 0 00-3 3v1H1a1 1 0 000 2h1v11a3 3 0 003 3h8a3 3 0 003-3V6h1a1 1 0 100-2zM7 3a1 1 0 011-1h2a1 1 0 011 1v1H7V3zm7 14a1 1 0 01-1 1H5a1 1 0 01-1-1V6h10v11z"></path>
                                </svg>
                            </button>
                            <p>Delete</p>
                        </li>
                    </ul>
                </div>
                <hr>
                <div class="_conversation_notes">
                    <p class="_notes_date">Note Created: 01/01/2022 </p>
                    <p class="_notes_para">Susan is looking to buy with her friend roger. Single family in Santa barbara.</p>
                </div>
                <div class="_conversation_save_note">
                    <div class="_conversation_save_note_para">
                        <p>Susan is looking to buy with her friend roger. Single family in Santa barbara.</p>
                    </div>
                    <hr>
                    <div class="_conversation_save_note_btn">
                        <button type="submit">
                            Save
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data(){
    return{
      showDrop3: false,
      showDrop1: false,
      loanPurpose:'Refinance',
      leadSource:'Bank Rate'

    }
  },
  methods:{
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
  }
}
</script>
