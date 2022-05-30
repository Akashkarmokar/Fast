<template>
  <div>
    <div v-if="getAddEmployee" class="_add_bg"></div>
      <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-7">
          <div class="_dashboard_main_addPerson" :class="(getAddEmployee)?'_dashboard_main_addPerson_active':''">
            <addPerson>
            </addPerson>
          </div>
        </div>
      </div>
    <div class="_dashboard_main_wrap">
      <div class="_dashboard_main_wrap_inner">
        <div class="_dashboard_main_user_inner">
          <div class="_dashboard_main_video_inner_top">
            <h4 class="_dashboard_main_video_inner_top_title">Employees</h4>
            <!-- <nuxt-link to="/addPerson" class="_dashboard_main_user_inner_top_link">
                Add Employee
            </nuxt-link> -->
            <button @click="addPersonSlideIn" class="_dashboard_main_user_inner_top_link">
                Add Employee
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
                <h4 class="_employee_title">Employee Name</h4>
              </div>
              <div class="_dashboard_employee_title2">
                <h4 class="_employee_title">Title</h4>
              </div>
              <div class="_dashboard_employee_title3">
                <!-- <h4 class="_employee_title">Job Title</h4> -->
                <h4 class="_employee_title">Branch Location</h4>
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
            </div>
            <div
              v-for="(item, index) in all_users"
              :key="index"
              class="_dashboard_employee_table_data"
            >
              <div class="_dashboard_employee_table_info">
                <div class="_dashboard_employee_data_info">
                  <div class="_dashboard_employee_image">
                    <!-- <img
                      src="../assets/images/employee.png"
                      alt="Image"
                      class="_employee_img"
                    /> -->
                  </div>
                  <h4 class="_employee_name">
                    {{ item.first_name }} {{ item.last_name }}
                  </h4>
                </div>
              </div>
              <div class="_employee_table_status">
                  <h4 class="_employee_name">
                    Branch Manager
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
                <h4>Boise,Idhao</h4>
                <!-- <h4>{{ item.phone }}</h4> -->
              </div>
              <div class="_employee_location">
                <h4>{{ item.phone }}</h4>
                <!-- <h4>{{ item.email }}</h4> -->
              </div>
              <!-- <div class="_employee_create_date">
                {{ this.$moment(item.date_of_birth).format('L') }}
                <span>{{ new Date() | moment("dddd, MMMM Do YYYY") }}</span>
                {{ item.date_of_birth | funeralDateFormat }}
                <h4><span>01/26/22</span> at <span>8:18 PM</span></h4>
                <h4><span>01/26/22</span> at <span>8:18 PM</span></h4>
              </div> -->
              <div class="_employee_btn">
                <h4 class="_employee_name">{{ item.email }}</h4>
                <!-- <button type="submit" class="_employee_btn_link">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    fill="none"
                    viewBox="0 0 24 24"
                  >
                    <path
                      fill="#00f"
                      d="M21.92 11.6C19.9 6.91 16.1 4 12 4s-7.9 2.91-9.92 7.6a1 1 0 000 .8C4.1 17.09 7.9 20 12 20s7.9-2.91 9.92-7.6a1 1 0 000-.8zM12 18c-3.17 0-6.17-2.29-7.9-6C5.83 8.29 8.83 6 12 6s6.17 2.29 7.9 6c-1.73 3.71-4.73 6-7.9 6zm0-10a4 4 0 100 8 4 4 0 000-8zm0 6a2 2 0 110-4 2 2 0 010 4z"
                    />
                  </svg>
                </button> -->
              </div>
              <div class="_employee_btn1">
                <label class="switch">
                  <input
                    @click="changeAccess(item, index)"
                    type="checkbox"
                    :checked="item.access != 0 ? true : false"
                  />
                  <span class="slider round"> </span>
                </label>
              </div>
              <div class="_employee_btn2">
                <a href="#0">
                  <svg xmlns="http://www.w3.org/2000/svg" width="37" height="8" fill="none" viewBox="0 0 37 8">
                    <circle cx="33" cy="4" r="4" fill="#000"/>
                    <circle cx="19" cy="4" r="4" fill="#000"/>
                    <circle cx="4" cy="4" r="4" fill="#000"/>
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
import addPerson from "./addPerson.vue";
// Vue.use(require('vue-moment'));
export default {
  middleware: "auth",
  components:{
    addPerson
  },
  data() {
    return {
      all_users: [],
      addPersonState: false,
    };
  },

    filters: {
    funeralDateFormat(date) {
      return moment(date).format("LL");
    },
  },
 computed: {
    ...mapGetters({
      getAddEmployee:'getAddEmployee',

    }),
  },
  methods: {
    addPersonSlideIn(){
     if(this.getAddEmployee ==  false)
      {this.$store.commit("setAddEmployee", true)
      }else{
        this.$store.commit("setAddEmployee", false)
      }
    },
    async getAllUsers() {
      const res = await this.callApi("get", `/user/getAllUsers`);
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
