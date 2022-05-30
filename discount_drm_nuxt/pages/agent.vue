<template>
  <div>
    <div v-if="this.getAddAgent" class="_add_bg"></div>
     <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-7">
          <div class="_dashboard_main_addPerson" :class="(this.getAddAgent)?'_dashboard_main_addPerson_active':''">
            <addAgent  >
            </addAgent>
          </div>
        </div>
      </div>
      <div class="_dashboard_main_wrap">
        <div class="_dashboard_main_wrap_inner">
          <div class="_dashboard_main_user_inner">
            <div class="_dashboard_main_video_inner_top">
              <h4 class="_dashboard_main_video_inner_top_title">Agent</h4>
              <button @click="addPersonSlideIn" class="_dashboard_main_user_inner_top_link">
                Add Agent
              </button>
            </div>
            <!-- <div class="_dashboard_main_employee_count">
              <div class="_employee_box">
                <h4>Total Employee Count</h4>
                <div class="_employee_box_inner">
                  <p>{{ all_users.length }}</p>
                </div>
              </div>
              <div class="_employee_box">
                <h4>Avg. Employee Tenure</h4>
                <div class="_employee_box_inner">
                  <p>4mo</p>
                </div>
              </div>
              <div class="_employee_box">
                <h4>Employee NPS</h4>
                <div class="_employee_box_inner">
                  <p>90</p>
                </div>
              </div>
            </div> -->
            <div class="_dashboard_main_employee_table">
              <div class="_dashboard_employee_table_heading">
                <div class="_dashboard_employee_title1">
                  <h4 class="_employee_title">Agent Name</h4>
                </div>
                <div class="_dashboard_employee_title2">
                  <h4 class="_employee_title">Company</h4>
                </div>
                <div class="_dashboard_employee_title3">
                  <!-- <h4 class="_employee_title">Job Title</h4> -->
                  <h4 class="_employee_title">Phone</h4>
                </div>
                <div class="_dashboard_employee_title4">
                  <!-- <h4 class="_employee_title">Branch Location</h4> -->
                  <h4 class="_employee_title">Email</h4>
                </div>
                <div class="_dashboard_employee_title4">
                  <!-- <h4 class="_employee_title">Branch Location</h4> -->
                  <h4 class="_employee_title">Access</h4>
                </div>
                <!-- <div class="_dashboard_employee_title5">
                  <h4 class="_employee_title">Created On</h4>
                  <h4 class="_employee_title">Date of Birth</h4>
                </div> -->
              </div>
              <div
                v-for="(item, index) in all_users"
                :key="index"
                class="_dashboard_employee_table_data"
              >
                <div class="_dashboard_employee_table_info _dashboard_employee_table_info1">
                  <div class="_dashboard_employee_data_info">
                    <!-- <div class="_dashboard_employee_image">
                      <img
                        src="../assets/images/employee.png"
                        alt="Image"
                        class="_employee_img"
                      />
                    </div> -->
                    <h4 class="_employee_name">
                      {{ item.first_name }} {{ item.last_name }}
                    </h4>
                  </div>
                </div>
                <div class="_employee_table_status">
                    <h4 class="_employee_name">
                      Marathon Realty
                    </h4>
                  <!-- <label class="switch">
                    <input
                      @click="changeAccess(item, index)"
                      type="checkbox"
                      :checked="item.access != 0 ? true : false"
                    />
                    <span class="slider round"> </span>
                  </label> -->
                </div>
                <div class="_employee_job_title">
                  <h4>{{ item.phone }}</h4>
                </div>
                <div class="_employee_location">
                  <h4>{{ item.email }}</h4>
                </div>
                <div class="_employee_create_date">
                  <!-- {{ this.$moment(item.date_of_birth).format('L') }} -->
                  <span>{{ item.date_of_birth | moment("dddd, MMMM Do YYYY") }}</span>
                  <!-- {{ item.date_of_birth | funeralDateFormat }} -->
                  <!-- <h4><span>01/26/22</span> at <span>8:18 PM</span></h4> -->
                  <!-- <h4><span>01/26/22</span> at <span>8:18 PM</span></h4> -->
                </div>
                <div class="_employee_btn">
                    <label class="switch">
                    <input
                      @click="changeAccess(item, index)"
                      type="checkbox"
                      :checked="item.access != 0 ? true : false"
                    />
                    <span class="slider round"> </span>
                  </label>
                </div>
                <div class="_profile_view">
                  <a href="#0" class="_profile_view_btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="36" height="8" fill="none" viewBox="0 0 36 8">
                      <circle cx="4" cy="4" r="4" fill="#000"/>
                      <circle cx="32" cy="4" r="4" fill="#000"/>
                      <circle cx="18" cy="4" r="4" fill="#000"/>
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
</template>


<script>
import { mapGetters } from "vuex";

import moment from "moment";
import addAgent from"../pages/addAgent.vue"
// Vue.use(require('vue-moment'));
export default {

  middleware: "auth",
  components:{
    addAgent
  },
  data() {
    return {
      all_users: [],
      addPersonState: false,
    };
  },
   computed: {
    ...mapGetters({
      getAddAgent:'getAddAgent',

    }),
  },

    filters: {
    funeralDateFormat(date) {
      return moment(date).format("LL");
    },
  },

  methods: {
    addPersonSlideIn(){
      if(this.getAddAgent ==  false)
      {this.$store.commit("setAddAgent", true)
      }else{
        this.$store.commit("setAddAgent", false)
      }
     },
    async getAllUsers() {
      const res = await this.callApi("get", `/user/getAllAgent`);
      if (res.status == 200) {
        this.all_users = res.data;
      }
    },

    async changeAccess(item, index) {
      // console.log(item);
      const res = await this.callApi("post", `/user/changeAccess`, {
        id: item.id,
        access: item.access == 0 ? 1 : 0,
      });
      if (res.status == 200) {
        // console.log(res.data)
        this.all_users[index].access = item.access == 0 ? 1 : 0;
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
