<template>
  <div class="_login_page">
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
                        </div>
                    </div>
                </div>
                <div class="_agent_login_right">
                    <div class="_login_all_logo_area">
                      <div class="_login_box">
                      </div>
                        <div class="_agent_login_form_area">
                            <h4>Reset your password</h4>
                            <div class="_login_inpt_area">
                                <label class="_agent_login_form_label">
                                  Token
                                </label><br>
                                <input type="text" class="_agent_login_form_input" placeholder="Token">
                            </div>
                            <div class="_login_inpt_area">
                              <label class="_agent_login_form_label">
                                Password
                              </label><br>
                              <input type="password" class="_agent_login_form_input" placeholder="Password">
                            </div>
                            <div class="_login_inpt_area">
                              <label class="_agent_login_form_label">
                                Confirm Password
                              </label><br>
                              <input type="password" class="_agent_login_form_input" placeholder="Password">
                            </div>
                            <div class="_login_inpt_area _login_inpt_area_btn">
                                <button @click="handleSubmit" class="_login_btn">
                                  {{ isLoading ? "Please wait .." : "Reset" }}
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
  middleware: "guest",
  data() {
    return {
  }
  },
  created(){
   }
}
</script>
