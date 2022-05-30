<template>
  <div class="_dashboard_main_wrap">
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
        <div class="_dashboard_add_agent_top">
                <div class="_add_agent_basic_inf_area">
                <div class="_dashboard_add_people_upload_image">
                  <div class="_upload_image">
                    <Upload class="_upload"
                        ref="upload"
                        :show-upload-list="false"
                        :on-success="handleSuccess"
                        :format="['jpg','jpeg','png','webp']"
                        :max-size="2048"
                        :on-format-error="handleFormatError"
                        type="drag"
                        :disabled="!isUploading"
                        :action="$config.BASE_URL+'/uploadImage'"
                        style="display: inline-block;width:58px;">
                        <div style="width: 120px;height:120px;position:relative">
                            <Icon class="_uplod_icon" type="ios-camera" size="25"></Icon>
                              <img
                                src="/img/upload.png"
                                alt="Image"
                                class="_upload_img"
                              />
                        </div>
                    </Upload>
                  </div>
                  <div class="_upload_image_txt">
                    <button>
                      <h4>Add Photo..</h4>
                    </button>
                  </div>
                </div>
                </div>
                <!-- <div class="_add_agent_save_btn">
                  <button type="submit" class="_add_agent_save_btn_link">Save & Close</button>
                </div> -->
              </div>
        <div class="row align-items-end">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
              <div class="_dashboard_add_agent_bottom">
                <!-- <h4 class="_dashboard_add_agent_bottom_titl">Basic Info</h4> -->
                <form class="_dashboard_add_agent_bottom_form">
                  <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          First Name *
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp1">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Last Name *
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Phone
                        </label><br>
                        <input type="number" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                        Email *
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                       <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Company
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                       <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          License #
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                     <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                       <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Date of Birth
                        </label><br>
                         <DatePicker type="date" :options="options1" placeholder="Select date" style="width:363px"></DatePicker>
                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                       <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Home Address
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                  </div>
                  <!-- <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          First Name *
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_flex">
                          <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp1">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Last Name *
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                       <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Suffix
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_flex">
                          <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          License #
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                       <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp3">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Suffix
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Date of Birth
                        </label><br>
                        <DatePicker class="_date" type="daterange" placement="bottom-end" placeholder="Select date" style="width: 200px"></DatePicker>
                      </div>
                    </div>
                  </div> -->
                </form>
                <div class="row">
                  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                    <div class="_add_agent_save_btn">
                      <button @click="saveAndClose()" type="submit" class="_add_agent_save_btn_link">Save & Close</button>
                    </div>
                  </div>
                </div>
              </div>
          </div>
          <!-- <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
            <div class="_dashboard_add_agent_top">
                <div class="_add_agent_basic_inf_area">
                   <div class="_agent_bottom_inpt_grp">
                    <label for="first-name" class="_agent_bottom_inpt_grp_label">
                      Contact Email *
                    </label><br>
                    <input type="name" class="_agent_bottom_inpt_grp_inpt">
                  </div>
                </div>
              </div>
             <div class="_dashboard_add_agent_bottom">
                <h4 class="_dashboard_add_agent_bottom_titl">Current Address</h4>
                <form class="_dashboard_add_agent_bottom_form">
                  <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_flex">
                          <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp1">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Street Address
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                       <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Unit/Apt
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_flex">
                          <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp1">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                         City
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                       <div class="_agent_bottom_inpt_grp">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                         State
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_flex">
                          <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Zip Code
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                       <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp3">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Country
                        </label><br>
                        <input type="name" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                      </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                      <div class="_agent_bottom_inpt_grp _agent_bottom_inpt_grp2">
                        <label for="first-name" class="_agent_bottom_inpt_grp_label">
                          Phone
                        </label><br>
                        <input type="number" class="_agent_bottom_inpt_grp_inpt">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
          </div> -->
        </div>
        <!-- <div class="_dashboard_add_people_top">
          <h4>(208) 000-000</h4>
          <button type="submit">Assign Number</button>
        </div> -->
        <!-- <div class="_dashboard_add_people_upload_image">
          <div class="_upload_image">
             <Upload class="_upload"
                ref="upload"
                 :show-upload-list="false"
                :on-success="handleSuccess"
                :format="['jpg','jpeg','png','webp']"
                :max-size="2048"
                :on-format-error="handleFormatError"
                 type="drag"
                 :disabled="!isUploading"
                :action="$config.BASE_URL+'/uploadImage'"
                style="display: inline-block;width:58px;">
                <div style="width: 120px;height:120px;position:relative">
                    <Icon class="_uplod_icon" type="ios-camera" size="25"></Icon>
                      <img
                        src="/img/upload.png"
                        alt="Image"
                        class="_upload_img"
                      />
                </div>
            </Upload>
          </div>
          <div class="_upload_image_txt">
            <h4>Upload Headshot</h4>
          </div>
        </div> -->
        <!-- <div class="_dashboard_add_people_wrap">
          <div class="row">
            <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
              <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                  <div class="_add_people_area">
                    <form class="_add_people_area_form">
                      <p>First</p>
                      <input
                        v-model.trim="new_user.first_name"
                        type="text"
                        class="_add_people_area_input"
                      />
                      <p>Cell Phone</p>
                      <input
                        v-model.trim="new_user.phone"
                        type="number"
                        class="_add_people_area_input"
                      />
                      <p>Password</p>
                      <input v-model="new_user.password" type="password" class="_add_people_area_input" />
                    </form>
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                  <div class="_add_people_area">
                    <form class="_add_people_area_form">
                      <p>Last</p>
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
                      <p>Confirm Password</p>
                      <input v-model="confirm_password" type="password" class="_add_people_area_input" />
                    </form>
                  </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="_dashboard_submit_btn">
                    <button :disabled="isloading" @click="addAgent" type="submit">{{isloading ? 'Please wait..':'Create'}}</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
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
            </div>
          </div>
        </div> -->
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
        password: "",
        profile_pic:""
      },
      confirm_password:'',
      isloading : false,
      isUploading : false,

    };
  },
  methods: {
    saveAndClose(){
        this.$store.commit("setAddAgent", false)
    },
    handleSuccess (res, file) {
      console.log(res, "res", file, "file")
      this.new_user.profile_pic = file
    },
    handleFormatError (file) {
        this.$Notice.warning({
            title: 'The file format is incorrect',
            desc: 'File format of ' + file.name + ' is incorrect, please select jpg or png.'
        });
    },
    async addAgent() {
      if(this.new_user.first_name.trim() == '') return this.i("First name is required")
      if(this.new_user.last_name.trim() == '') return this.i("Last name is required")
      if(this.new_user.phone.trim() == '') return this.i("Phone is required")
      if(this.new_user.email.trim() == '') return this.i("Email is required")
      if(this.new_user.password != this.confirm_password) return this.i("Password doesn't match")
      this.isloading = true
      const res = await this.callApi("post", `/user/addAgent`, this.new_user);
      if (res.status == 200) {
        this.clearNewUser();
        this.$router.push("/agent");
      }
      this.isloading = false
    },

    clearNewUser() {
        (this.new_user.first_name = ""),
        (this.new_user.last_name = ""),
        (this.new_user.phone = ""),
        (this.new_user.email = ""),
        (this.new_user.password = "");
        (this.confirm_password = "");
    },
  },
  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", "agent");
  },
};
</script>
