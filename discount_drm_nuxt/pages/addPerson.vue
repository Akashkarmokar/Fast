<template>
  <div class="_dashboard_main_wrap">
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
        <!-- <div class="_dashboard_add_people_top">
          <h4>(208) 000-000</h4>
          <button  type="submit">Save & Close</button>
        </div> -->
        <div class="_dashboard_add_people_upload_image">
          <div class="_upload_image">
            <img
              src="/img/upload.png"
              alt="Image"
              class="_upload_img"
            />

          </div>
          <div class="_upload_image_txt">
            <button>
              <h4>Add Photo ....</h4>
            </button>
          </div>
        </div>
        <div class="_dashboard_add_people_wrap">
          <div class="row">
            <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12">
              <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                  <div class="_add_people_area">
                    <form class="_add_people_area_form">
                      <p>First Name</p>
                      <input
                        v-model.trim="new_user.first_name"
                        type="text"
                        class="_add_people_area_input"
                      />
                      <p>Phone</p>
                      <input
                        v-model.trim="new_user.phone"
                        type="number"
                        class="_add_people_area_input"
                      />
                      <p>Title</p>
                      <select aria-label="Default select example" class="_add_people_area_input1 form-select">
                        <option selected="selected" disabled="disabled">Select Title</option>
                        <option value="{1}">Today</option>
                        <option value="{2}">This Week</option>
                        <option value="{3}">This Month</option>
                        <option value="{3}">This Year</option>
                      </select>
                      <p>Branch Location</p>
                      <select aria-label="Default select example" class="_add_people_area_input1 form-select">
                        <option selected="selected" disabled="disabled">Select Branch Location</option>
                        <option value="{1}">Today</option>
                        <option value="{2}">This Week</option>
                        <option value="{3}">This Month</option>
                        <option value="{3}">This Year</option>
                      </select>
                      <p>Birthday</p>
                      <input
                        v-model.trim="new_user.date_of_birth"
                        type="date"
                        class="_add_people_area_input"
                      />
                    </form>
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                  <div class="_add_people_area">
                    <form class="_add_people_area_form">
                      <p>Last Name</p>
                      <input
                        v-model.trim="new_user.last_name"
                        type="text"
                        class="_add_people_area_input"
                      />
                      <p>Email</p>
                      <input
                        v-model.trim="new_user.email"
                        type="email"
                        class="_add_people_area_input"
                      />
                      <p>Account Permission</p>
                      <select aria-label="Default select example" class="_add_people_area_input1 form-select">
                        <option selected="selected" disabled="disabled">Select Account</option>
                        <option value="{1}">Today</option>
                        <option value="{2}">This Week</option>
                        <option value="{3}">This Month</option>
                        <option value="{3}">This Year</option>
                      </select>
                      <p>NMLS #</p>
                      <input type="text" class="_add_people_area_input" />
                      <p>Home Address</p>
                      <input
                        type="text"
                        class="_add_people_area_input"
                      />
                    </form>
                  </div>
                </div>
                <hr>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="_dashboard_submit_btn">
                     <input type="text" class="_add_people_area_input1" />
                     <button class="_assign_btn" type="submit">Assign Number</button>
                    <!-- <button :disabled="isloading" @click="addNewUser" type="submit">{{isloading ? 'Please wait..':'Create'}}</button> -->
                  </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="_dashboard_add_people_top">
                    <button @click="saveAndClose"  type="submit">Save & Close</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
              <div class="_dashboard_add_people_license">
                <p>State licenses</p>
                <div class="_license_area">
                  <ul>
                    <li>
                      <button type="submit">Arizona</button>
                    </li>
                    <li>
                      <button type="submit">California</button>
                    </li>
                  </ul>
                </div>
                <div class="_add_more_btn">
                  <button type="button">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="18"
                      height="18"
                      fill="none"
                      viewBox="0 0 18 18"
                    >
                      <path
                        stroke="#333"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="1.5"
                        d="M9 16.5a7.5 7.5 0 100-15 7.5 7.5 0 000 15zM9 6v6M6 9h6"
                      />
                    </svg>
                    Add More
                  </button>
                </div>
              </div>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  middleware: "auth",
  data() {
    return {
      new_user: {
        first_name: "",
        last_name: "",
        phone: "",
        email: "",
        date_of_birth: "",
      },
      isLoading:false
    };
  },
  methods: {
    saveAndClose(){
        this.$store.commit("setAddEmployee", false)
    },
    async addNewUser() {
      if (this.new_user.first_name == "" || this.new_user.last_name == "" ||
      this.new_user.phone.length < 11 || this.new_user.date_of_birth == "" ||
      this.new_user.email == "") {
        this.w("Something Went Wrong");
        return;
      }
      this.isLoading = true
      const res = await this.callApi("post", `/user/addNewUser`, this.new_user);
      if (res.status == 200) {
        this.clearNewUser();
        this.$router.push("/employee");
      }
      this.isLoading = false
    },

    clearNewUser() {
      (this.new_user.first_name = ""),
        (this.new_user.last_name = ""),
        (this.new_user.phone = ""),
        (this.new_user.email = ""),
        (this.new_user.date_of_birth = "");
    },
  },
  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", "employee");
  },
};
</script>
