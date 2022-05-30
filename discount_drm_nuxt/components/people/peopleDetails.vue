<template>
   <div class="">
      <div class="">
          <div class="row">
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="_people_details_inner_area">
                      <div class="_conversation_middle_chat_top _conversation_middle_chat_top1" >
                        <div class="_peplDtls_lft_crd_top _peplDtls_lft_crd_top1">
                          <h4 class="_peplDtls_lft_crd_titl1">
                            {{clientInfo.first_name}} {{clientInfo.last_name}}
                          </h4>
                          <div class="_conversation_client_area _conversation_client_area1">
                              <p class="_peplDtls_lft_crd_txt2">
                                Source: <strong>BankRate</strong>
                              </p>
                              <p class="_peplDtls_lft_crd_txt2">
                                Lead Purpose:  <strong>  {{clientInfo.loan_purpose}}</strong>
                              </p>
                              <!-- <p class="_peplDtls_lft_crd_tx3">
                                Created on:  {{ clientInfo.created_at | luxon({ format: "dd/MM/yyyy" }) }}
                              </p> -->
                          </div>
                        </div>
                        <!-- <div class="_peplDtls_mdl_nav">
                            <ul class="_peplDtls_mdl_nav_ul">
                              <li class="_peplDtls_mdl_nav_li _active">
                                New
                              </li>
                              <li class="_peplDtls_mdl_nav_li">
                                Reaching out
                              </li>
                              <li class="_peplDtls_mdl_nav_li">
                                Responded
                              </li>
                              <li class="_peplDtls_mdl_nav_li">
                                Application
                              </li>
                              <li class="_peplDtls_mdl_nav_li">
                                In Process
                              </li>
                              <li class="_peplDtls_mdl_nav_li">
                                Closed
                              </li>
                            </ul>
                        </div>
                        <p class="_peplDtls_r8_cmplt">
                            Complete Step
                        </p> -->
                          <!-- <ul class="_conversation_details_list">
                              <li class="d-flex">
                                <div class="_conversation_details_item" @click="nav ='peopleConversation'">
                                    <p :class="nav =='peopleConversation'?'_conversation_details_item_active':''">Conversation</p>
                                </div>
                                <div class="_conversation_details_item"  @click="nav ='mprtgageDetails'">
                                    <p :class="nav =='mprtgageDetails'?'_conversation_details_item_active' :''">Mortgage Details</p>
                                </div>
                              </li>
                              <li class="d-flex">
                                <div class="_conversation_details_item">
                                  <button v-on:click="showDrop4 = !showDrop4" type="submit">
                                    <div class="_conversation_btn_txt">
                                      <p>Status</p>
                                      <span>{{status}}</span>
                                    </div>
                                    <div class="_conversation_btn_icon">
                                      <svg xmlns="http://www.w3.org/2000/svg" width="10" height="9" fill="none" viewBox="0 0 10 9">
                                        <path stroke="#333" stroke-linecap="round" stroke-linejoin="round" stroke-width=".723" d="M2.76 3.555l2.183 2.17 2.184-2.17"></path>
                                      </svg>
                                    </div>
                                  </button>
                                  <div v-if="showDrop4" class="_conversation_details_item_dropdown">
                                    <ul>
                                      <li @click="selectItem('New')">
                                        <a href="#0">New</a>
                                      </li>
                                      <li @click="selectItem('Responded')">
                                        <a href="#0">Responded</a>
                                      </li>
                                      <li @click="selectItem('Active')">
                                        <a href="#0">Active</a>
                                      </li>
                                      <li @click="selectItem('Rate Alert')">
                                        <a href="#0">Rate Alert</a>
                                      </li >
                                      <li @click="selectItem('Pre-Approved')">
                                        <a href="#0">Pre-Approved</a>
                                      </li>
                                      <li @click="selectItem('In Process')">
                                        <a href="#0">In Process</a>
                                      </li>
                                      <li @click="selectItem('Closed')">
                                        <a href="#0">Closed</a>
                                      </li>
                                      <li @click="selectItem('No Sale')">
                                        <a href="#0">No Sale</a>
                                      </li>
                                    </ul>
                                  </div>

                                </div>
                                <div class="_conversation_details_item">
                                  <button v-on:click="showDrop5 = !showDrop5" type="submit">
                                    <div class="_conversation_btn_txt">
                                      <p>Campaign</p>
                                      <span>{{campaign}}</span>
                                    </div>
                                    <div class="_conversation_btn_icon">
                                      <svg xmlns="http://www.w3.org/2000/svg" width="10" height="9" fill="none" viewBox="0 0 10 9">
                                        <path stroke="#333" stroke-linecap="round" stroke-linejoin="round" stroke-width=".723" d="M2.76 3.555l2.183 2.17 2.184-2.17"></path>
                                      </svg>
                                    </div>
                                  </button>
                                  <div v-if="showDrop5" class="_conversation_details_item_dropdown">
                                  <ul>
                                    <li @click="selectCampaign('Bankrate')">
                                      <a href="#0">Bankrate</a>
                                    </li>
                                    <li @click="selectCampaign('Zillow')">
                                      <a href="#0">Zillow</a>
                                    </li>
                                    <li @click="selectCampaign('Lending Tree')">
                                      <a href="#0">Lending Tree</a>
                                    </li>
                                    <li @click="selectCampaign('Free Rate Update')">
                                      <a href="#0">Free Rate Update</a>
                                    </li>
                                    <li @click="selectCampaign('Pre-Approved')">
                                      <a href="#0">Pre-Approved</a>
                                    </li>
                                  </ul>
                                </div>
                                </div>
                              </li>
                          </ul> -->
                      </div>
                      <div class="_people_details_inner_area_right">
                        <div class="_conversation_client_area _conversation_client_area2">
                          <ul class="_peplDtls_lft_crd_list">
                            <li>
                              <button type="submit">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                      <path fill="#ffff" d="M19.41 13c-.22 0-.45-.07-.67-.12-.445-.1-.883-.23-1.31-.39a2 2 0 00-2.48 1l-.22.46a13.17 13.17 0 01-2.67-2 13.167 13.167 0 01-2-2.67l.46-.21a2 2 0 001-2.48 10.47 10.47 0 01-.39-1.32c-.05-.22-.09-.45-.12-.67a3 3 0 00-3-2.49H5a3 3 0 00-2.24 1 3 3 0 00-.73 2.4 19.07 19.07 0 005.41 11 19.07 19.07 0 0011 5.41c.13.01.26.01.39 0a3 3 0 002.74-1.773c.172-.386.26-.804.26-1.227v-3A3 3 0 0019.41 13zm.49 6a1 1 0 01-.712.957 1 1 0 01-.438.033 17.16 17.16 0 01-9.87-4.84A17.16 17.16 0 014 5.25a1 1 0 01.59-1.065A1 1 0 015 4.1h3a1 1 0 011 .78c0 .27.09.55.15.82a11 11 0 00.46 1.54l-1.4.66a1 1 0 00-.52.56 1 1 0 000 .76 14.49 14.49 0 007 7 1 1 0 00.76 0 1 1 0 00.56-.52l.63-1.4a12.41 12.41 0 002.39.61 1 1 0 01.78 1L19.9 19zM14 2h-.7a1.004 1.004 0 00.17 2H14a6 6 0 016 6v.53a1 1 0 00.91 1.08h.08a1 1 0 001-.91V10A8 8 0 0014 2zm2 8a1 1 0 102 0 4 4 0 00-4-4 1 1 0 100 2 2 2 0 012 2z"></path>
                                  </svg>
                              </button>
                            </li>
                            <li>
                              <button type="submit">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="21" fill="none" viewBox="0 0 16 21">
                                    <path fill="#ffff" d="M15.89 8.55A1 1 0 0015 8h-5V2A1 1 0 008.691.998a1 1 0 00-.501.362l-8 11a1 1 0 00-.08 1A1 1 0 001 14h5v6a1 1 0 001.454.892 1 1 0 00.356-.302l8-11a1 1 0 00.08-1.04zM8 16.92V13a1 1 0 00-1-1H3l5-6.92V9a1 1 0 001 1h4l-5 6.92z"></path>
                                  </svg>
                              </button>
                            </li>
                            <li>
                                <button type="submit">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="none" viewBox="0 0 22 22">
                                        <path fill="#ffff" d="M10.07 5.12A3.48 3.48 0 0111 5a4 4 0 014 4v1.34a1 1 0 002 0V9a6 6 0 00-5-5.91V2a1 1 0 00-2 0v1.1l-.45.08a1.004 1.004 0 10.52 1.94zm10.64 14.17l-18-18a1.004 1.004 0 10-1.42 1.42l4.12 4.11A6 6 0 005 9v3.18A3 3 0 003 15v2a1 1 0 001 1h3.14a4 4 0 007.72 0h1.73l2.7 2.71a1.002 1.002 0 001.639-.325 1 1 0 00-.219-1.095zM7 9a3.31 3.31 0 010-.55L10.59 12H7V9zm4 10a2 2 0 01-1.72-1h3.44A2 2 0 0111 19zm-6-3v-1a1 1 0 011-1h6.59l2 2H5z"></path>
                                    </svg>
                                </button>
                            </li>
                          </ul>
                          <button type="submit" class="_invite_link">Invite to apply</button>
                        </div>
                      </div>
                      <mortgageDetails  v-if="nav =='mprtgageDetails' "  />
                  </div>
                  <peopleConversation v-if="nav =='peopleConversation'" />

              </div>

          </div>
      </div>
  </div>
</template>

<script>
 import mortgageDetails from "~/components/people/mortgageDetails.vue";
import peopleConversation from "~/components/people/peopleConversation.vue";

export default {
 data() {
    return {
      nav:'peopleConversation',
      tab:'LeadDetails',
      opens_note:false,
      mortgageDetailsOn:true,
      showDrop4: false,
      showDrop5: false,
      status:'Responded',
      campaign:'BankRate',
      clientInfo:{},
    };
  },
  methods:{
     async getClientInfo( ){
      const res = await this.callApi("get", `/people/getClientInfo?id=${this.$route.query.id}`);
      if(res.status == 200){
        this.clientInfo = res.data
      }
    },
    selectItem(item){
      this.status = item
      this.showDrop4 = false
    },
    selectCampaign(item){
      this.campaign = item
      this.showDrop5 = false
    }
  },
  computed: {

  },
  components: {  mortgageDetails, peopleConversation  },
  created(){
    this.getClientInfo()
  }

}
</script>
