<template>
    <div>
        <!-- <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12">
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
                    <li>
                        <p>Assigned Conversationlist : <span> Blake Bianchi</span></p>
                    </li>
                    <li>
                        <p>Assigned Loan Officer : <span> Blake Bianchi</span></p>
                    </li>
                    <li>
                        <p>Assigned Realtor : <span>  Colette Chambers</span></p>
                    </li>
                    <li>
                        <p>Client Source  : <span  >  {{loanPurpose}}</span></p>
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
                        <p>Lead Purpose  : <span  > {{leadSource}}</span></p>
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

                </ul>
                <div class="_conversation_notes">
                    <p class="_notes_date"> Created at: 01/01/2022 at 10:00 AM </p>
                 </div>
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
    </div> -->
    </div>
</template>
<script>
export default {
  data(){
    return{
      showDrop3: false,
      showDrop1: false,
      loanPurpose:'BankRate',
      leadSource:'Refinance'

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
