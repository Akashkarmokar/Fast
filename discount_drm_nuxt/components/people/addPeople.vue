<template>
  <div class="_dashboard_main_wrap">
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
        <div class="_dashboard_add_people_top">
          <h4>(208) 000-000</h4>
          <button type="submit">Assign Number</button>
        </div>
        <div class="_dashboard_add_people_upload_image">
          <div class="_upload_image">
            <img
              src="../../assets/images/upload.png"
              alt="Image"
              class="_upload_img"
            />
          </div>
          <Upload :action="$config.BASE_URL+'/uploadImage'">
            <!-- <Button icon="ios-cloud-upload-outline">Upload files</Button> -->
            <div class="_upload_image_txt">
              <button>
                <h4>Add Photo..</h4>
              </button>
            </div>
          </Upload>

        </div>
        <div class="_dashboard_add_people_wrap">
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
                        v-model.trim="new_user.contact"
                        type="number"
                        class="_add_people_area_input"
                      />
                      <p>Birthday</p>
                      <input
                        v-model.trim="new_user.birthday"
                        type="date"
                        class="_add_people_area_input"
                      />
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
                      <p>NMLS #</p>
                      <input type="text" class="_add_people_area_input" />
                    </form>
                  </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="_dashboard_submit_btn">
                    <button @click="addNewUser" type="submit">Submit</button>
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
        contact: "",
        email: "",
        birthday: "",
      },
    };
  },
  methods: {
    async addNewUser() {
      if (this.new_user.first_name== "" || this.new_user.last_name== "" ||
      this.new_user.contact.length < 5 || this.new_user.birthday == "" ||
      this.new_user.email == "") {
        this.i("Something Went Wrong");
        return;
      }
      const res = await this.callApi("post", `/people/addPeople`, this.new_user);
      if (res.status == 200) {
        this.clearNewUser();
        this.$router.push("/people");
      }
    },

    clearNewUser() {
      (this.new_user.first_name = ""),
        (this.new_user.last_name = ""),
        (this.new_user.phone = ""),
        (this.new_user.email = ""),
        (this.new_user.birthday = "");
    },
  },

}
</script>
