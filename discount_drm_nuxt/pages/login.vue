<template>
  <div class="_login_page">
    <!-- <div class="_login_main_layout">
      <div class="_login_layout">
        <div class="_login_right">
          <div class="_login_right_inner">
            <div class="_login_image">
              <img
                v-if="!loader"
                src="../assets/images/login.png"
                alt="Image"
                class="_login_img"
              />
            </div>
            <div class="row" v-if="loader">
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="_login_loader_wrap">
                  <img
                    src="../assets/images/loading.gif"
                    alt=""
                    class="_login_loader_img"
                  />
                </div>
              </div>
            </div>
            <div class="row" v-else>
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div action="#0" class="_login_social_form">
                  <h4>Ready to login?</h4>
                  <p class="_login_top_para">Enter some details below</p>
                  <div class="_login_social_input_wrap">
                    <input
                      v-model="formInline.email"
                      type="email"
                      class="_login_social_input_email"
                      placeholder="Email Address"
                      data-cursor-hover
                    />
                    <input
                      v-model="formInline.password"
                      type="password"
                      class="_login_social_input_email"
                      placeholder="Password"
                      data-cursor-hover
                    />
                    <a class="_login_forgot_pass">Forgot Password ?</a>
                    <button @click="handleSubmit" class="_login_input_btn">
                      {{ isLoading ? "Please wait .." : "Log In" }}
                    </button>
                    <p class="_login_bottom_para">
                      By Loging in, you agree to Discount ‘s Terms of Service
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <div class="_agent_login_wrapper">
        <div class="_agent_login_wrap">
            <div class="_agent_login_area">
                <div class="_agent_login_left">
                    <div class="_agent_login_left_box">
                        <div class="_agent_login_left_box_area">
                            <div class="_agent_login_left_logo">
                                <img src="../assets/images/fast-logo.png" alt="" class="_login_img">
                            </div>
                            <div class="_agent_login_left_txt">
                              <h4 class="_agent_login_left_txt_title">The Future of Mortgage</h4>
                              <a href="#0" class="_agent_login_left_txt_link">AI-powered Platform</a>
                            </div>
                            <!-- <div class="_agent_login_form_area">
                                <div class="_login_inpt_area">
                                    <label class="_agent_login_form_label">
                                      Email
                                    </label><br>
                                        <input v-model="formInline.email" type="email" class="_agent_login_form_input" placeholder="">
                                    </div>
                                    <div class="_login_inpt_area">
                                        <label class="_agent_login_form_label">
                                            Password
                                        </label><br>
                                        <input v-model="formInline.password" type="password" class="_agent_login_form_input" placeholder="">
                                    </div>
                                    <div class="_login_inpt_area _login_inpt_area_btn">
                                        <button @click="handleSubmit" class="_login_btn">
                                          {{ isLoading ? "Please wait .." : "Log In" }}
                                        </button>
                                    </div>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="_agent_login_right">
                    <div class="_login_all_logo_area">
                      <div class="_login_box">
                        <ul class="_login_box_list">
                          <li class="_login_box_item">
                            <button type="submit" class="_login_box_link_btn">
                              Login
                            </button>
                          </li>
                          <li class="_login_box_link">
                            <a href="#0">
                              Client
                            </a>
                            <input v-model="formInline.user_type" value="CLIENT" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                          </li>
                          <li class="_login_box_link">
                            <a href="#0">
                              Agent
                            </a>
                            <input v-model="formInline.user_type" value="AGENT" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                          </li>
                          <li class="_login_box_link">
                            <a href="#0">
                              Employee
                            </a>
                            <input v-model="formInline.user_type" value="ADMIN" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                          </li>
                        </ul>
                      </div>
                        <div class="_agent_login_form_area">
                            <div class="_login_inpt_area">
                                <label class="_agent_login_form_label">
                                  Email Address
                                </label><br>
                                <input v-model="formInline.email" type="email" class="_agent_login_form_input" placeholder="Email Address">
                            </div>
                            <div class="_login_inpt_area">
                              <label class="_agent_login_form_label">
                                Password
                              </label><br>
                              <input v-model="formInline.password" type="password" class="_agent_login_form_input" placeholder="Password">
                            </div>
                            <div class="_login_inpt_area _login_inpt_area_btn">
                                <button @click="handleSubmit" class="_login_btn">
                                  {{ isLoading ? "Please wait .." : "Log In" }}
                                </button>
                            </div>
                            <nuxt-link to="/forgetpassword" class="_forget_link">Forgot password?</nuxt-link>
                          </div>
                        <!-- <div class="_login_all_logo">
                            <img src="../assets/images/fast-bg-login.svg" alt="" class="_login_dd_logo">
                        </div> -->
                    </div>
                    <!-- <div class="_agent_login_right_txt">
                        <h4 class="_agent_login_right_txt_title">
                            AIM HIGHER DREAM BIGGER
                        </h4>
                    </div>
                    <div class="_login_all_logo_area">
                        <div class="_login_all_logo">
                            <img src="../assets/images/future-logo-icon.png" alt="" class="_login_dd_logo">
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
  middleware: "guest",
  layout: "empty",
  data() {
    return {
      loader: false,
       formInline: {
        email: "",
        password: "",
      },
      errorData: {
        email: "",
        password: "",
      },
      isLoading: false,
    };
  },

  methods: {
    async handleSubmit() {
      if (this.formInline.user_type == '') return this.i('Please select your user role')
      if (this.formInline.email.trim() == "") return this.i("Email is required");
      if (
        !this.formInline.password ||
        this.formInline.password == null ||
        this.formInline.password.trim() == ""
      ) {
        return this.i("Password is required!!");
        // return (this.errorData.password = "Password is required!!");
      }
      this.isLoading = true;
        this.loader = true;
      const res = await this.callApi("post", "/auth/login", this.formInline);
      if (res.status == 200) {
        this.$store.commit('loginUser', res.data)
        console.log(this.$store.state.authUser, "after login")
        this.$router.push('/')
            // window.location = "/";
      }
      this.loader = false;
      this.isLoading = false;
    },
  },
};
</script>
