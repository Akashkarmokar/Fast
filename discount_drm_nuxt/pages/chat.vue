<template>
  <div class="_dashboard_main_wrap _dashboard_main_wrap_conversation">
    <div class="_chat_inner_wrap">
      <div class="row">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12">
          <div class="_chat_left">
            <div class="_chat_left_inner_area">
              <div class="_chat_left_top">
                <div
                  class="_dashboard_main_bar_form_wrap _chat_form"
                  action="#0"
                >
                  <input
                    placeholder="Find conversation..."
                    type="text"
                    class="_dashboard_main_bar_search_input"
                    v-model="nameSearch.search"
                    v-on:keyup = "searchByUser()" 
                  />
                  <span class="_dashboard_main_bar_search_input_ic">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="18"
                      height="18"
                      fill="none"
                      viewBox="0 0 18 18"
                    >
                      <path
                        stroke="#666"
                        stroke-linecap="round"
                        stroke-width="1.119"
                        d="M17 17l-3.778-3.784L17 17zm-1.684-8.842A7.158 7.158 0 111 8.158a7.158 7.158 0 0114.316 0v0z"
                      ></path>
                    </svg>
                  </span>
                </div>
                <!-- <ul class="_chat_left_icon_list">
                  <li class="_chat_left_item">
                    <button type="submit">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="none"
                        viewBox="0 0 16 16"
                      >
                        <path
                          stroke="#4B5563"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M10.357 5.643a3.331 3.331 0 010 4.715V5.643zm1.886-1.885a6 6 0 010 8.485V3.757zM3.724 10H2.667A.667.667 0 012 9.334V6.667A.667.667 0 012.667 6h1.057l3.138-3.138A.667.667 0 018 3.333v9.334a.667.667 0 01-1.138.471L3.724 10z"
                        />
                      </svg>
                    </button>
                  </li>
                  <li class="_chat_left_item">
                    <button type="submit">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="none"
                        viewBox="0 0 16 16"
                      >
                        <path
                          stroke="#4B5563"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M10 8a2 2 0 11-4 0 2 2 0 014 0v0z"
                        />
                        <path
                          stroke="#4B5563"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M1.639 8A6.67 6.67 0 0114.36 8 6.67 6.67 0 011.64 8v0z"
                        />
                      </svg>
                    </button>
                  </li>
                  <li class="_chat_left_item">
                    <button type="submit">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="none"
                        viewBox="0 0 16 16"
                      >
                        <path
                          stroke="#4B5563"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M8.667 6.667V2l-6 7.333h4.666V14l6-7.333H8.667z"
                        />
                      </svg>
                    </button>
                  </li>
                  <li class="_chat_left_item">
                    <button type="submit">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="none"
                        viewBox="0 0 16 16"
                      >
                        <path
                          stroke="#4B5563"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M10.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0v0zM8 9.333A4.667 4.667 0 003.333 14h9.334A4.666 4.666 0 008 9.333v0z"
                        />
                      </svg>
                    </button>
                  </li>
                </ul> -->
                <!-- <hr class="_chat_border" /> -->
                <ul class="_chat_left_read_list">
                  <li class="_chat_left_read_item">
                    <button type="submit" :class="{
                      _chat_left_read_link_active: isActive === 'read'
                    }"
                    v-on:click="getUnreadUsers()"
                    >
                     Unread
                    </button>
                  </li>
                  <li class="_chat_left_read_item">
                    <button type="submit" :class="{ 
                      _chat_left_read_link_active: isActive === 'all'
                    }"
                    v-on:click="getAllUsers()"
                    >All</button>
                  </li>
                </ul>
                <!-- <hr class="_chat_border" /> -->
              </div>
              <div class="_chat_left_bottom">
                
                <div
                  v-for="(item, index) in all_users"
                  :key="index"
                  @click="getAllMessages(item,index)"
                >
                  <div
                    v-if="item.id != authUser.id"
                    :class="
                      selectedUserId === item.id
                        ? '_chat_left_inner_box _chat_left_inner_box_active'
                        : '_chat_left_inner_box'
                    "
                  >
                    <div class="_chat_left_info">
                      <div class="_chat_left_box_image">
                        <img
                          src="../assets/images/chat1.png"
                          alt="Image"
                          class="_chat_img"
                        />
                      </div>
                      <div class="_chat_left_box_txt">
                        <h4>{{ item.first_name }} {{ item.last_name }}</h4>
                        <h6 id="lastSeenMessage">{{ getLastMsgByIndex(index) }}</h6>
                        <!-- <sub>{{item.is_online}}</sub> -->
                      </div>
                    </div>
                    <div class="_ellipse">
                    </div>
                    <!-- <div class="_chat_left_box_time">
                      <div
                        v-if="item.chat && item.chat.length > 0"
                        class="_chat_left_box_count"
                      >
                        <span>{{ item.chat.length }}</span>
                      </div>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12">
          <div class="_chat_right_inner">
            <div class="_chat_right_inner_txt">
              <h4 class="_chat_right_inner_title">Susan Smith</h4>
            </div>
            <!-- <div class="_chat_right_title">
              <h4>{{ recever_name }}</h4>
            </div> -->
            <div class="_chat_right_conversation_box">
              <div
                class="_chat_right_middle_box"
                v-chat-scroll
              >
                <div v-for="(item, index) in all_messages" :key="index">
                  <!--Sender-->
                  <div
                    v-if="item.user_id != authUser.id"
                    class="_chat_middle_box_sender"
                  >
                    <div class="_chat_middle_box_msg">
                      <div class="_chat_middle_message">
                        <div class="_chat_middle_box_sender_txt">
                          <p class="_chat_middle_box_sender_txt_para">
                            {{ item.msg }}
                          </p>
                        </div>
                        <div class="_chat_middle_box_info">
                          <div class="_chat_middle_box_date">
                            <p>{{ item.created_at | daysAgo }}</p>
                          </div>
                          <!-- <div class="_chat_middle_box_time">
                            <p>1:35 PM</p>
                          </div> -->
                        </div>
                      </div>
                      <!-- <div class="_chat_middle_box_sidebar">
                        <button type="submit">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="24"
                            height="24"
                            fill="none"
                            viewBox="0 0 24 24"
                          >
                            <path
                              fill="#A4ABB6"
                              d="M12.318 14.25a1.907 1.907 0 100-3.814 1.907 1.907 0 000 3.815zM12.318 7.572a1.907 1.907 0 100-3.815 1.907 1.907 0 000 3.815zM12.318 20.921a1.907 1.907 0 100-3.815 1.907 1.907 0 000 3.815z"
                            />
                          </svg>
                        </button>
                      </div> -->
                    </div>
                  </div>
                  <!--Sender-->
                  <!--Reciver-->
                  <div v-else class="_chat_middle_box_reciver">
                    <div class="_chat_middle_box_reciver_area">
                      <!-- <div class="_chat_sender_emoji">
                        <div class="_chat_sender_emoji_btn">
                          <button type="submit">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              width="24"
                              height="24"
                              fill="none"
                              viewBox="0 0 24 24"
                            >
                              <path
                                fill="#A4ABB6"
                                d="M16.723 14.635a.497.497 0 00-.703.039 5.512 5.512 0 01-4.107 1.824 5.512 5.512 0 01-4.108-1.825.497.497 0 10-.74.664 6.51 6.51 0 004.848 2.156 6.51 6.51 0 004.849-2.156.498.498 0 00-.039-.702z"
                              />
                              <path
                                fill="#A4ABB6"
                                d="M11.913.576C5.603.576.469 5.71.469 12.02c0 6.31 5.134 11.444 11.444 11.444 6.31 0 11.444-5.134 11.444-11.444 0-6.31-5.134-11.444-11.444-11.444zm0 21.893c-5.762 0-10.45-4.687-10.45-10.45 0-5.761 4.688-10.448 10.45-10.448S22.362 6.258 22.362 12.02s-4.687 10.449-10.45 10.449z"
                              />
                              <path
                                fill="#A4ABB6"
                                d="M15.893 8.539a2.49 2.49 0 00-2.488 2.487.498.498 0 00.996 0c0-.822.67-1.492 1.492-1.492.823 0 1.493.67 1.493 1.492a.498.498 0 00.995 0 2.49 2.49 0 00-2.488-2.487zM9.425 11.026a.498.498 0 00.995 0A2.49 2.49 0 007.932 8.54a2.49 2.49 0 00-2.488 2.487.498.498 0 00.996 0c0-.822.67-1.492 1.492-1.492.823 0 1.493.67 1.493 1.492z"
                              />
                            </svg>
                          </button>
                          <div
                            class="
                              _chat_sender_emoji_hover
                              _chat_sender_emoji_hover_show
                            "
                          >
                            <div class="_chat_sender_emoji_more">
                              <button type="submit">
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  width="13"
                                  height="13"
                                  fill="none"
                                  viewBox="0 0 13 13"
                                >
                                  <g clip-path="url(#clip0_4909_12488)">
                                    <path
                                      stroke="#32425B"
                                      stroke-linecap="round"
                                      stroke-linejoin="round"
                                      stroke-width="1.431"
                                      d="M6.842 2.12v4.768m0 0h4.768m-4.768 0H2.073m4.769 0v4.768"
                                    />
                                  </g>
                                  <defs>
                                    <clipPath id="clip0_4909_12488">
                                      <path
                                        fill="#fff"
                                        d="M0 0h11.444v11.444H0z"
                                        transform="translate(.842 .888)"
                                      />
                                    </clipPath>
                                  </defs>
                                </svg>
                              </button>
                            </div>
                            <div class="_chat_sender_emoji1">
                              <button type="submit">👍</button>
                            </div>
                            <div class="_chat_sender_emoji1">
                              <button type="submit">😊</button>
                            </div>
                            <div class="_chat_sender_emoji1">
                              <button type="submit">❤</button>
                            </div>
                            <div class="_chat_sender_emoji1">
                              <button type="submit">🤝</button>
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="_chat_middle_message _chat_middle_message_bg">
                        <div class="_chat_middle_box_sender_txt">
                          <p class="_chat_middle_box_sender_txt_para">
                            {{ item.msg }}
                          </p>
                        </div>
                        <div class="_chat_sender_info">
                          <p>{{ item.created_at | daysAgo }}</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--Reciver-->
                </div>
              </div>
              <!--Textfield-->
              <div class="_chat_text_field_area">
                <p v-if="typing">Typing...</p>
                <div class="_chat_right_textarea">
                  <textarea
                    @input="socketIoMessageTyping"
                    v-model.trim="messageData.msg"
                    placeholder="Write your message..."
                    class="_chat_textarea"
                    @keydown.enter.exact.prevent="sendMessage"
                    @keydown.enter.shift.exact="messageData.msg += '\n'"
                  ></textarea>
                  
                </div>
                <div class="_chat_right_text_area_icon">
                  <div class="_chat_right_text_icon">
                    <div class="_chat_right_text_icon1">
                      <button type="submit">A</button>
                    </div>
                    <div class="_chat_right_text_icon1">
                      <button type="submit">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="23"
                          height="23"
                          fill="none"
                          viewBox="0 0 23 23"
                        >
                          <path
                            fill="#FFCC6C"
                            d="M11.444 20.982c5.259 0 9.537-4.278 9.537-9.537 0-5.259-4.278-9.537-9.537-9.537-5.258 0-9.537 4.278-9.537 9.537 0 5.259 4.279 9.537 9.537 9.537zm3.331-12.398a1.425 1.425 0 110 2.849 1.425 1.425 0 010-2.849zm-4.101 6.598a3.915 3.915 0 001.54 0 3.92 3.92 0 00.716-.222c.223-.095.443-.213.648-.35.198-.136.388-.292.563-.467a3.75 3.75 0 00.467-.565l1.58 1.066a5.746 5.746 0 01-2.517 2.074c-.35.147-.711.26-1.076.334a5.766 5.766 0 01-3.377-.334 5.716 5.716 0 01-2.52-2.075l1.582-1.066c.136.202.293.392.465.563a3.814 3.814 0 001.214.82c.233.098.472.173.715.222zM8.106 8.584a1.431 1.431 0 110 2.862 1.431 1.431 0 010-2.862z"
                          />
                        </svg>
                      </button>
                    </div>
                    <div class="_chat_right_text_icon1">
                      <button type="submit">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="24"
                          height="23"
                          fill="none"
                          viewBox="0 0 24 23"
                        >
                          <path
                            stroke="#A7A9AD"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="1.431"
                            d="M22 9.358l-8.782 9.018A5.33 5.33 0 019.4 20a5.33 5.33 0 01-3.818-1.624A5.621 5.621 0 014 14.455c0-1.47.569-2.881 1.582-3.92l7.212-7.406c.332-.354.73-.635 1.169-.829a3.52 3.52 0 012.784-.025c.442.186.844.46 1.182.808.338.347.606.76.787 1.214a3.783 3.783 0 01-.024 2.859 3.702 3.702 0 01-.807 1.2l-7.212 7.41c-.34.336-.794.522-1.266.518a1.777 1.777 0 01-1.257-.54 1.874 1.874 0 01-.528-1.292 1.875 1.875 0 01.505-1.3l7.213-7.409"
                          />
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div class="_chat_right_send_button">
                    <button v-if="messageLoading" type="submit">
                      Loading...
                    </button>
                    <button v-else @click="sendMessage" type="submit">
                      Send
                    </button>
                  </div>
                </div>
              </div>
              <!--Textfield-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import moment from "moment";
// Vue.use(require('vue-moment'));
let timeoutInstance = null;
export default {
  middleware: "auth",
  data() {
    return {
      isActive:'all',
      selectedUserId: -1,
      selectedUserIndex: -1,
      lastMessages:[],
      nameSearch: {
        search: "",
      },
      all_users: [],

      all_messages: [],
      selected_user: "",
      recever_name: "",

      messageData: {
        msg: "",
        recever_id: "",
      },

      messageLoading: false,
      typing: false,
    };
  },

  mounted() {
    this.socketIo();
  },

  filters: {
    daysAgo(date) {
      // return moment(date).format("LL");
      return moment(date).startOf("second").fromNow();
    },
  },

  methods: {
    socketIo() {
      this.socket = this.$nuxtSocket({
        name: "home", // Use socket "home"
        channel: "/", // connect to '/index'
        // socket.io-client opts:
        reconnection: false,
      });

      // this.getMessage()
      // this.socket.on("EvName", (data) => {
      //   console.log(data);
      // });
      // console.log(this.$route.query.id)

      this.socketIoMessageReceived();
      this.socketIoMessageTyping();
      this.socketIoUserStatusCheck();
    },

    socketIoUserStatusCheck() {
      this.socket.on(`online`, (data) => {
        console.log("Online"+JSON.stringify(data));
        const index = this.all_users.findIndex(
            (element) => element.id == data.id
          );
        // console.log(index+"Index")
        if (index >= 0) {
          this.all_users[index].is_online = data.is_online;
        }
      });
    },
    socketIoMessageTyping() {
      // console.log(this.messageData);
      const sendData = { ...this.messageData };
      sendData.sender_id = this.authUser.id;
      // console.log(this.messageData);
      this.socket.emit("typingMessage", sendData);
      this.socket.on("typingMessage", (data) => {
        // console.log(data);
        if (
          data.recever_id == this.authUser.id &&
          data.sender_id == this.messageData.recever_id
        ) {
          if (data.msg != "") {
            this.typing = true;
          } else {
            this.typing = false;
          }
          // this.typingText = data.chat_text
        }
      });
    },

    socketIoMessageReceived() {
      this.socket.on("messageRecived", (data) => {
        // console.log("Socket IO"+JSON.stringify(data));
        if (this.$route.query.id == data.user_id) {
          this.all_messages.push(data);
          this.typing = false;
        } else {
          const index = this.all_users.findIndex(
            (element) => element.id == data.user_id
          );
          if (this.all_users[index].chat) {
            this.all_users[index].chat.push(data);
          }
        }

        //   this.updateUnreadMessage(this.all_users[index].conversation.inbox_key, this.all_users[index].conversation.unread_message)
        //   // console.log("index"+index);
      });
    },

    async sendMessage() {
      if (this.messageData.msg == "") {
        return;
      }
      const res = await this.callApi(
        "post",
        `/chat/storeMessage`,
        this.messageData
      );
      if (res.status == 200) {
        this.messageData.msg = "";
        this.all_messages.push(res.data);

        this.getLastMsgByApi(this.messageData.recever_id);


      }
    },
    async getAllUsers(userName='') {
      this.isActive = 'all'
      const res = await this.callApi("get", `/user/getAllUsers/${userName}`);
      // console.log(res);
      this.lastMessages = [];
      if (res.status == 200) {
        this.all_users = res.data;
        this.all_users.forEach(item => {
          let msg = this.makeLastMsg(item);
          let obj = {
            userId: item.id,
            lastMessage: msg,
          }
          
          this.lastMessages.push(obj);
        });
        // if (
        //   this.$route.query.id == undefined ||
        //   this.$route.query.id == null ||
        //   !this.$route.query.id
        // ) {
        //   this.$router.push(`/chat?id=${this.all_users[0].id}`);
        //   this.messageData.recever_id = this.all_users[0].id;
        //   this.getAllMessages(this.all_users[0]);
        // }

        // if (this.$route.query.id) {
        //   this.messageData.recever_id = this.$route.query.id;
        //   const index = this.all_users.findIndex(
        //     (element) => element.id == this.$route.query.id
        //   );
        //   this.getAllMessages(this.all_users[index]);
        // }
      }
    },
    async getAllMessages(item,idx) {
      this.selectedUserId = item.id;
      this.selectedUserIndex = idx;
      const index = this.all_users.findIndex(
        (element) => element.id == item.id
      );
      this.all_users[index].chat = [];
      this.recever_name = item.first_name + " " + item.last_name;
      this.messageData.recever_id = item.id;
      this.messageData.msg = "";
      this.$router.push(`/chat?id=${item.id}`);
      // if (item.inbox) {
      const res = await this.callApi(
        "post",
        `/chat/getAllMessagesViaInboxKey`,
        { recever_id: item.id }
      );
      if (res.status == 200) {
        this.all_messages = res.data;
      }
      // }
      // else{
      //   this.all_messages = [];
      // }
    },
    async searchByUser(){
        if(timeoutInstance){
          clearTimeout(timeoutInstance)
        }
        timeoutInstance = setTimeout(()=>{
          if(this.nameSearch.search.length > 2){
            this.getAllUsers(this.nameSearch.search);
            // this.nameSearch.search=""
          }
        },500)
    },
    async getUnreadUsers(){
      this.isActive = 'read';
      const {data} = await this.callApi("get", `/user/getUnreadUsers`);
      this.all_users = data;
    },
    makeLastMsg(item){
      let sendMessageDateTime = item.sendFrom.length > 0 ? moment(item.sendFrom[0].created_at)  : null;  
      let recieveMessageDateTime = item.reciveFrom.length > 0 ? moment(item.reciveFrom[0].created_at)  : null;
      
      if( sendMessageDateTime && recieveMessageDateTime){
        if(sendMessageDateTime.isBefore(recieveMessageDateTime)){
          return item.reciveFrom[0].msg
        }else{
          return item.sendFrom[0].msg;
        }
      }else{
        if(sendMessageDateTime){
          return item.sendFrom[0].msg;
        }
        if(recieveMessageDateTime){
          return item.reciveFrom[0].msg;
        }
      }

      return "";
    },
    getLastMsgByIndex(index){
      return this.lastMessages[index].lastMessage;
    },
    async getLastMsgByApi(recieveUserId){
      let index = this.selectedUserIndex;
      let lastMessage = "testing";
      /**
       * Change user array along side with there last message array
       */
      const user = this.all_users[index];
      this.all_users.splice(index,1);
      this.all_users.unshift(user);

      const {data} = await this.callApi('post','/user/getLastMessage',{id:recieveUserId}) 

      const mostRecentLastMessage = data.msg;
      let obj = {
        userId: recieveUserId,
        lastMessage: mostRecentLastMessage,
      }
      this.lastMessages.splice(index,1);
      this.lastMessages.unshift(obj);
      console.log(temp);
    }
  },
  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
    this.getAllUsers();
    // if (this.$route.query.id) {
    //   this.messageData.recever_id = this.$route.query.id;
    //   const index = this.all_users.findIndex( (element) => element.id == this.$route.query.id);
    //   console.log(this.all_users[index]);
    //   // this.getAllMessages(this.all_users[index]);
    // }
  },
  beforeCreate() {},
};
</script>

<style scoped>
  #lastSeenMessage{
    font-size: 10px;
  }
</style>