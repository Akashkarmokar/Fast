<template>
    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
        <div class="_peplDtls_r8">
            <div class="_peplDtls_mdl_nav2">
                <ul class="_peplDtls_mdl_nav2_ul">
                    <li class="_peplDtls_mdl_nav2_li" :class="tab == 'conversation'? '_active' : ''" @click="tab= 'conversation'">
                        Communication
                    </li>
                    <li class="_peplDtls_mdl_nav2_li" :class="tab == 'notes'? '_active' : ''" @click="getAllNotes()">
                        Notes
                    </li>
                </ul>
            </div>
            <div class="_peplDtls_r8_cnvrstn" v-if="tab == 'conversation'">
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

          
        </div>
    </div>
</template>
<script>
export default {
  data(){
    return{
      tab:'conversation',
      opens_note:false,
      all_messages :[ ],
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
    }
  },
  methods:{
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
  created(){
    this.tab = 'conversation'
    this.getAllSms()
  }
}
</script>
<style scoped>
.no_notes{
  margin-left: 17px;
}
</style>
