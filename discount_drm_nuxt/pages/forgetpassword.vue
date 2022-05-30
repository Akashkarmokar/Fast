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
                              <a href="#0" class="_agent_login_left_txt_link">AI-powered Platform </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="_agent_login_right">
                    <div class="_login_all_logo_area">
                      <div class="_login_box">
                      </div>
                        <div class="_agent_login_form_area">
                            <h4 class="_mar10">Lost your password?</h4>
                            <h4>Enter your details to recover.</h4>
                            <div class="_login_inpt_area">
                                <label class="_agent_login_form_label">
                                  Email Address
                                </label><br>
                                <input v-model="email" type="email" class="_agent_login_form_input" placeholder="Email Address">
                            </div>
                            <div class="_login_inpt_area _login_inpt_area_btn">
                                <button  class="_login_btn" @click="forgotPassword">
                                  {{ isLoading ? "Please wait .." : "Recover" }}
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
        email:'',
      isLoading:false,
       reg: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,24}))$/,
  }
  },
  methods:{
      async forgotPassword() {
        if(!this.email  || this.email.trim()=='' || this.email==null) return this.i('Email is required!')
        if (this.email && !this.reg.test(this.email)) return this.i("Invalid email format!");
        this.isLoading = true;
        const res = await this.callApi('post','/auth/sendResetToken', {email:this.email})
        if(res.status==200){
            this.s("A password reset code to your email. Please check you mail..")
            this.$router.push('/resetpassword')
        }
        this.isLoading = false;
    },
  },
  created(){

  }
}
</script>
