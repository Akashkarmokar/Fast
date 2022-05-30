<template>
  <div class="_dashboard_main_wrap _dashboard_main_wrap_conversation">
    <div class="_conversation_chat_inner_wrap">
      <div class="row">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12">
          <div class="_chat_left">
            <div class="_chat_left_inner_area">
              <div class="_chat_left_top">
                <form
                  class="_dashboard_main_bar_form_wrap _chat_form"
                  action="#0"
                >
                  <input
                    v-model.trim="nameSearch.search"
                    @input="searchConversation"
                    placeholder="Search..."
                    type="text"
                    class="_dashboard_main_bar_search_input"
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
                </form>
                <div v-if="nameSearch.search == ''">
                  <!-- <hr class="_chat_border" /> -->
                  <ul class="_chat_left_read_list">
                    <li class="_chat_left_read_item">
                      <button
                        @click="getAllUsers"
                        type="submit"
                        :class="
                          unreadCloseSelector == 'Unread'
                            ? '_chat_left_read_link_active'
                            : ''
                        "
                      >
                        Unread
                      </button>
                    </li>
                    <li class="_chat_left_read_item">
                      <button
                        @click="closedConversations"
                        type="submit"
                        :class="
                          unreadCloseSelector == 'Closed'
                            ? '_chat_left_read_link_active'
                            : ''
                        "
                      >
                        Closed
                      </button>
                    </li>
                  </ul>
                  <!-- <hr class="_chat_border" /> -->
                </div>
              </div>
              <div class="_chat_left_bottom">
                <div
                  v-for="(item, index) in all_users"
                  :key="index"
                  @click="getAllMessages(item), (selected_user_index = index)"
                >
                  <div
                    :class="
                      messageData.to_number == item.contact
                        ? '_chat_left_inner_box _chat_left_inner_box_active'
                        : '_chat_left_inner_box'
                    "
                  >
                    <!--Cross button -->
                    <!-- <div
                      v-if="item.is_close == 0 || item.conversation != null"
                      @click="closeConversation(item, index)"
                      class="_chat_left_inner_box_cross"
                    >
                      <button type="submit">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="15"
                          height="15"
                          fill="none"
                          viewBox="0 0 15 15"
                        >
                          <path
                            stroke="#fff"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M11.25 3.75l-7.5 7.5M3.75 3.75l7.5 7.5"
                          />
                        </svg>
                      </button>
                    </div> -->
                    <!--Cross button -->
                    <div class="_chat_left_info">
                      <!-- <div class="_chat_left_box_image">
                        <img
                          src="../assets/images/chat1.png"
                          alt="Image"
                          class="_chat_img"
                        />
                      </div> -->
                      <div class="_chat_left_box_txt">
                        <h4>{{ item.first_name }} {{ item.last_name }}</h4>
                      </div>
                    </div>
                    <div class="_ellipse">
                    </div>
                    <!-- <div class="_chat_left_box_time">
                      <div
                        v-if="
                          item.conversation &&
                          item.conversation.unread_message > 0
                        "
                        class="_chat_left_box_count"
                      >
                        <span>{{ item.conversation.unread_message }}</span>
                      </div>
                    </div> -->
                  </div>
                </div>
                <div v-if="all_users.length <= 0">
                  <p>No unread messages.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12">
          <div class="_chat_right_inner">
            <div class="_chat_right_inner_txt _unread_active">
              <h4 class="_chat_right_inner_title">Susan Smith</h4>
            </div>
            <div class="_no_unread">
                <img src="../assets/images/unread.png" alt="" class="_no_unread_img">
                <h4 class="_no_unread_title">No Unread Communication</h4>
            </div>
            <div  class="_chat_right_conversation_box _unread_active">
              <div class="_chat_right_middle_box" v-chat-scroll>
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
                            {{ item.message_data }}
                            <sub> ({{ item.status }}) </sub>
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
                <div class="_chat_right_textarea">
                  <textarea
                    v-model.trim="messageData.message_data"
                    placeholder="Write your message..."
                    class="_chat_textarea"
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
                    <button v-if="messageSendLoading" type="submit">
                      Sending...
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
        <conversationUser/>
      </div>
    </div>
    <!--Modal for making call -->
    <Modal
      v-model="modal1"
      :styles="{ top: '20px' }"
      class-name="vertical-center-modal _call_popup"
    >
      <div class="_dashboard_call_area _margin_tb">
        <div class="_dashboard_call_area_txt">
          <h4>Outgoing Call</h4>
          <p>Sussan Smithson</p>
        </div>
        <div class="_dashboard_call_system">
          <div class="_dashboard_call_system_btn">
            <button class="_dashboard_call_system_btn_link" type="submit">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-pause"
              >
                <rect x="6" y="4" width="4" height="16"></rect>
                <rect x="14" y="4" width="4" height="16"></rect>
              </svg>
            </button>
          </div>
          <div class="_dashboard_call_system_btn">
            <button class="_dashboard_call_system_btn_link" type="submit">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-mic-off"
              >
                <line x1="1" y1="1" x2="23" y2="23"></line>
                <path
                  d="M9 9v3a3 3 0 0 0 5.12 2.12M15 9.34V4a3 3 0 0 0-5.94-.6"
                ></path>
                <path
                  d="M17 16.95A7 7 0 0 1 5 12v-2m14 0v2a7 7 0 0 1-.11 1.23"
                ></path>
                <line x1="12" y1="19" x2="12" y2="23"></line>
                <line x1="8" y1="23" x2="16" y2="23"></line>
              </svg>
            </button>
          </div>
          <div class="_dashboard_call_system_btn">
            <button class="_dashboard_call_system_btn_link" type="submit">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-contact-outgoing"
              >
                <polyline points="23 7 23 1 17 1"></polyline>
                <line x1="16" y1="8" x2="23" y2="1"></line>
                <path
                  d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"
                ></path>
              </svg>
            </button>
          </div>
          <div class="_dashboard_call_system_btn">
            <button type="submit" class="_answer_btn_link">Answer Call</button>
          </div>
        </div>
      </div>
    </Modal>
    <!--Modal for making call -->
    <!--Modal for task -->
    <Modal
      v-model="modal2"
      :styles="{ top: '20px' }"
      class-name="vertical-center-modal _call_popup _all_modal"
    >
      <div class="_margin_tb _dashboard_popup_area">
        <h4>Create Task</h4>
        <form>
          <input placeholder="Enter Task Name" type="text" />
          <Select v-model="model1" style="width: 200px" placeholder="Activity">
            <Option
              v-for="item in cityList"
              :value="item.value"
              :key="item.value"
              >{{ item.label }}</Option
            >
          </Select>
          <div class="_popup_picker">
            <DatePicker
              type="date"
              placeholder="Date"
              style="width: 200px"
            ></DatePicker>
            <TimePicker
              format="HH:mm"
              placeholder="Time"
              style="width: 112px"
            ></TimePicker>
          </div>
          <div class="_create_btn">
            <button type="button">Create Task</button>
          </div>
        </form>
      </div>
    </Modal>
    <!--Modal for task -->
    <!--Modal for assign -->
    <Modal
      v-model="modal3"
      :styles="{ top: '20px' }"
      class-name="vertical-center-modal _call_popup _all_modal"
    >
      <div class="_margin_tb _dashboard_popup_area">
        <h4>Create Task</h4>
        <form>
          <p>Conversationalist</p>
          <input type="text" />
          <p>Loan Officer</p>
          <input type="text" />
        </form>
      </div>
    </Modal>
    <!--Modal for assign -->
    <!--Modal for sale -->
    <Modal
      v-model="modal4"
      :styles="{ top: '20px' }"
      class-name="vertical-center-modal _call_popup _all_modal"
    >
      <div class="_margin_tb _dashboard_popup_area">
        <h4>Select Reason</h4>
        <form>
          <Select
            v-model="model2"
            style="width: 200px"
            placeholder="Select Reason"
          >
            <Option
              v-for="item in reasonList"
              :value="item.value"
              :key="item.value"
              >{{ item.label }}</Option
            >
          </Select>
        </form>
      </div>
    </Modal>
    <!--Modal for sale -->
  </div>
</template>
<script>
import moment from "moment";
// const io = require("socket.io-client");
// import Vue from "vue";
import conversationUser from '~/components/people/conversationUser.vue';
// import VueChatScroll from 'vue-chat-scroll'
// Vue.use(VueChatScroll);
export default {
  components: { conversationUser },
  middleware: "auth",
  data() {
    return {
      showDrop1: false,
      showDrop2: false,
      showDrop3: false,
      showDrop4: false,
      modal1: false,
      modal2: false,
      modal3: false,
      modal4: false,
      loading: false,
      nameSearch: {
        search: "",
      },
      all_users: [],

      all_messages: [],
      selected_user: "",
      recever_name: "",

      messageData: {
        message_data: "",
        recever_id: "",
        to_number: "",
      },
      selected_user: {},
      selected_user_index: -1,
      messageSendLoading: false,
      cityList: [
        {
          value: "No Activity",
          label: "No Activity",
        },
      ],
      model1: "",
      reasonList: [
        {
          value: "Reason1",
          label: "Reason1",
        },
      ],
      model2: "",
      unreadCloseSelector: "Unread",
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
    contactModalOn() {
      this.modal1 = true;
      console.log("calling click", this.modal1);
    },
    async closeConversation(item, index) {
      console.log("Close" + JSON.stringify(item), index);
      if (item) {
        const res = await this.callApi(
          "post",
          `/conversation/closeConversation`,
          item
        );
        if (res.status == 200) {
          // this.all_users[index] = res.data;
          this.all_users.splice(index, 1);
        }
      }
    },
    async searchConversation() {
      if (this.nameSearch.search == "" || this.nameSearch.search.length < 1) {
        this.getAllUsers();
        return;
      }
      // console.log(this.nameSearch)
      const res = await this.callApi(
        "post",
        `/user/getUserByName`,
        this.nameSearch
      );
      if (res.status == 200) {
        this.all_users = res.data;
      }
    },
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
      this.socket.on("messageReplySocket", (data) => {
        console.log(data);
        if (this.messageData.to_number == data.inbox_key) {
          this.all_messages.push(data);
        }
        const index = this.all_users.findIndex(
          (element) => element.contact == data.inbox_key
        );
        this.all_users[index].conversation.unread_message += 1;
        this.updateUnreadMessage(
          this.all_users[index].conversation.inbox_key,
          this.all_users[index].conversation.unread_message
        );
        // console.log("index"+index);
      });
    },
    async updateUnreadMessage(inKey, uMsg) {
      // console.log(inKey, uMsg);
      const res = await this.callApi(
        "post",
        `/conversation/updateUnreadMessage`,
        {
          inboxKey: inKey,
          unrearMessage: uMsg,
        }
      );
      if (res.status == 200) {
        // this.all_users[index].conversation.unread_message = res.data.unread_message;
      }
    },
    async getAllUsers() {
      this.unreadCloseSelector = "Unread";
      // const res = await this.callApi("get", `/user/getAllUsers`);
      const res = await this.callApi(
        "get",
        `/conversation/allUnCloseConversation`
      );
      if (res.status == 200) {
        this.all_users = res.data;
        // this.$router.push(`/conversation?id=${this.all_users[0].id}`);
        if(! res.data.length >0){
          this.all_messages = []
          console.log(this.all_messages , "this.all_messages")
          this.$router.replace({'query': null});
        }
        else if (this.$route.query.id) {
          this.assignId(this.validatecontactNumber(this.$route.query.id));
        }else {
          this.assignId(this.validatecontactNumber(this.all_users[0].contact));
        }
      }
    },
    async closedConversations() {
      const res = await this.callApi(
        "get",
        `/conversation/allCloseConversation`
      );
      if (res.status == 200) {
        if (res.data.length <= 0) {
          this.w("No Closed Conversation Found");
          return;
        }
        this.all_users = res.data;
        this.unreadCloseSelector = "Closed";
        this.$router.push(`/conversation?id=${this.all_users[0].contact}`);
        if (this.$route.query.id) {
          this.assignId(this.validatecontactNumber(this.$route.query.id));
        } else {
          this.assignId(this.validatecontactNumber(this.all_users[0].contact));
        }
      }
    },

    async sendMessage() {
      if (this.messageData.message_data == "") {
        return;
      }
      this.messageSendLoading = true;
      const res = await this.callApi(
        "post",
        `/conversation/storeMessage`,
        this.messageData
      );
      if (res.status == 200) {
        this.messageData.message_data = "";
        // res.data.is_reply = 0;
        this.all_messages.push(res.data);
        if (this.unreadCloseSelector == "Closed") {
          // this.getAllMessages(this.selected_user);
          setTimeout(() => {
            this.getAllUsers();
          this.all_messages.push(res.data);
          this.messageSendLoading = false;
          // return
          }, 1500);

        }
        this.all_users.splice(this.selected_user_index, 1);
        this.selected_user_index = 0;
        this.all_users.unshift(this.selected_user);
        this.s("Message Sent");
        this.messageSendLoading = false;

        if (this.nameSearch.search != "") {
          this.nameSearch.search = "";
          this.getAllUsers();
        }
      }
    },

    async callGetMessageByInboxKey(contact) {
      const res = await this.callApi(
        "post",
        `/conversation/getAllMessagesViaInboxKey`,
        { other_id: contact }
      );
      if (res.status == 200) {
        this.all_messages = res.data;
      }
    },
    async getAllMessages(item) {
      this.selected_user = item;
      this.messageData.recever_id = item.id;
      this.messageData.to_number = item.contact;
      this.$router.push(`/conversation?id=${item.contact}`);

      this.updateUnreadMessage(item.contact, 0);
      const index = this.all_users.findIndex(
        (element) => element.contact == item.contact
      );
      if (this.all_users[index].conversation) {
        this.all_users[index].conversation.unread_message = 0;
      }

      this.callGetMessageByInboxKey(item.contact);
      // this.callGetMessageByInboxKey(item.id);
    },
    async assignId(id) {
      this.messageData.recever_id = id;
      this.messageData.to_number = id;
      this.callGetMessageByInboxKey(id);
      this.$router.push(`/conversation?id=${id}`);
    },
    validatecontactNumber(number) {
      // console.log("Number"+ number);
      // console.log("Number[0]"+ number.charAt(0));

      if (number.charAt(0) != "+") {
        return "+" + number.substring(1, number.length);
      }

      return number;
    },
  },
  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
    this.getAllUsers();
    if (this.$route.query.id) {
      // console.log("Queary"+this.$route.query.id);
      let contactNumber = this.validatecontactNumber(this.$route.query.id);
      // console.log("Varified"+contactNumber);
      this.updateUnreadMessage(
        this.validatecontactNumber(this.$route.query.id),
        0
      );
      this.assignId(contactNumber);
    }
  },
};
</script>
