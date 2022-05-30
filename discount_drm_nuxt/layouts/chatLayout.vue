<template>
  <div class="_dashboard_page">
    <!-- {{authUser}} -->
    <div class="_dashboard_wrapper">
      <topBar />
      <leftSidebar />

      <div class="_dashboard_main_wrapper">
        <div class="_dashboard_main_wrap">
          <div class="_chat_inner_wrap">
            <div class="row">
              <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                <div class="_chat_left">
                  <div class="_chat_left_inner_area">
                    <div class="_chat_left_top">
                      <form
                        class="_dashboard_main_bar_form_wrap _chat_form"
                        action="#0"
                      >
                        <input
                          placeholder="Find conversation..."
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
                      <ul class="_chat_left_icon_list">
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
                      </ul>
                      <hr class="_chat_border" />
                      <ul class="_chat_left_read_list">
                        <li class="_chat_left_read_item">
                          <button
                            type="submit"
                            class="_chat_left_read_link_active"
                          >
                            All
                          </button>
                        </li>
                        <li class="_chat_left_read_item">
                          <button type="submit">Unread</button>
                        </li>
                      </ul>
                      <hr class="_chat_border" />
                    </div>
                    <div class="_chat_left_bottom">
                      <div
                        @click="getAllMessages(item)"
                        v-for="(item, index) in all_users"
                        :key="index"
                        class="_chat_left_inner_box _chat_left_inner_box_active"
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
                          </div>
                        </div>
                        <div class="_chat_left_box_time">
                          <div class="_chat_left_box_hour">
                            <p>11:26</p>
                          </div>
                          <div class="_chat_left_box_count">
                            <span>2</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <Nuxt />
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
import leftSidebar from "~/components/leftSidebar.vue";
import topBar from "~/components/topBar.vue";
export default {
  layout: "default",
  middleware: "auth",
  components: { leftSidebar, topBar },
  data() {
    return {
      all_users: [],

      all_messages: [],
      selected_user: "",
    };
  },

  filters: {
    funeralDateFormat(date) {
      return moment(date).format("LL");
    },
  },

  methods: {
    async getAllUsers() {
      const res = await this.callApi("get", `/user/getAllUsers`);
      if (res.status == 200) {
        this.all_users = res.data;
      }
    },
    async getAllMessages(item) {
      this.selected_user = item.id;
      const res = await this.callApi(
        "post",
        `/chat/getAllMessagesViaInboxKey`,
        { other_id: item.id }
      );
      if (res.status == 200) {
        this.all_messages = res.data;
      }
    },
  },

  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
    this.getAllUsers();
  },
  beforeCreate() {},
};
</script>
