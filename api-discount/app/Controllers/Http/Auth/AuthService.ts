
import AuthQuery from './AuthQuery';
import Mail from '@ioc:Adonis/Addons/Mail';
import User from '../../../Models/User';
import Hash from '@ioc:Adonis/Core/Hash';
'use strict'
const axios = require('axios')
// const Axios = use('Axios');

export default class AuthService {
    private authQuery : AuthQuery

    constructor(){
      this.authQuery = new AuthQuery
    }

    public async getThirdPartyApiResult(ctx){
      let data = ctx.request.all();
      await this.authQuery.updateCounter()
      // return data
      const res = await axios.get(`https://thirdparty.mortech-inc.com/mpg/servlet/mpgThirdPartyServlet?request_id=${data.request_id}&filterId=${data.filterId}&customerId=${data.customerId}&thirdPartyName=${data.thirdPartyName}&leadSource=${data.leadSource}&emailAddress=${data.emailAddress}&propertyZip=${data.propertyZip}&propertyState=${data.propertyState}&appraisedvalue=${data.appraisedvalue}&loan_amount=${data.loan_amount}&fico=${data.fico}&loanpurpose=${data.loanpurpose}&proptype=${data.proptype}&occupancy=${data.occupancy}&targetPrice=-999&loanProduct1=${data.loanProduct1}&view=1&waiveescrow=${data.waiveescrow}`,
        {
        headers: {
            'x-api-key': 'p04K8sROga7olHSc6EDpY1Vl4NUaN0cA8h3mIuO0',
            'authorizationtoken':`${data.authorizationtoken}`,
        },
        });
      if(res.status == 200){
        return res.data
      }

    }

    public async register(ctx){
      let data = ctx.request.all();
      let number = Math.floor(Math.random() * 899999 + 100000)
      delete data.agree
      delete data.password_confirmation
      let username = data.first_name +'_'+ data.last_name
      let totalUsers : any[] = await this.authQuery.searchUsername(username)
      let numberOfUsers : number = totalUsers[0].total
      let newCount = numberOfUsers > 0 ? ++numberOfUsers : ''
      username = newCount > 0 ? `${username}_${newCount}` : username
      data.username = username
      data.forgot_code= number,
      data.is_banned='unverified'

      let user :any = await this.authQuery.register(data)
      if(user){
        let obj ={
          username: user?.first_name +' '+user?.last_name,
          token:user?.forgot_code
        }
        await Mail.send((message) => {
          message
              .from('noreply@scrapabill.com', 'Social-Network')
              .to(user.email)
              .subject('Please confirm your email address')
              .htmlView('emails.verification_emai',  obj)
        })
      }
      return ctx.response.status(200).send({ msg: 'Account created successfully!' })

    }
    public async sendResetToken(ctx,data){
      const userInfo :any = await User.findBy('email', data.email)

      if (!userInfo) {
        return ctx.response.status(401).send({ msg: 'Invalid credential!' })
      }

      // generating number
      let number = Math.floor(Math.random() * 899999 + 100000)

       await this.authQuery.updateUser('id', userInfo.id, {
        forgot_code: number,
      })

      let userInfo2 :any = await User.findBy('email', data.email)
      let obj ={
        username: userInfo2?.first_name +' '+userInfo2?.last_name,
        token:userInfo2?.forgot_code
      }
      await Mail.send((message) => {
        message
          .from('noreply@discount.com','Mortgage discount')
          .to(data.email)
          .subject('Please confirm your email address')
          .htmlView('emails/password_reset', obj)
      })

      return ctx.response.status(200).send({ msg: 'Verification code sent successfully!' })

    }

    public async getCounter(){
      return this.authQuery.getCounter()
    }
    public async verifyEmail(ctx) {
      let data = ctx.request.all()


      const user :any = await User.query().where('email', data.email).where('forgot_code', data.verificationCode).first();
      if (!user) {
        return ctx.response.status(401).send({ msg: 'Verification code is wrong.' })
      }
       await this.authQuery.updateUser('id', user.id, {
        forgot_code: null,
        is_banned: 'no',
      })

      return ctx.response.status(200).send({ msg: 'Account verified successfully!' })

    }

    public async verifyCode(ctx,data) {
      return data
      const user :any = await this.authQuery.singleUserToken('email', data.email, data.verificationCode)
      if (user && user.forgot_code == data.verificationCode) {
        return ctx.response.status(200).send({ msg: 'Succeed! Enter to a new password.' })
      } else {
        return ctx.response.status(401).send({ msg: 'Invalid Code!' })
      }
    }


    public async passwordReset(ctx,data) {
      // let data = ctx.request.all();
      const userInfo :any = await this.authQuery.getSingleUserInfo('email', data.email)
      if (!userInfo){
        return ctx.response.status(401).send({ msg: 'Invalid Credential!' })
      }
       await this.authQuery.updateUser('id', userInfo.id, {
        password: await Hash.make(data.password),
        forgot_code: null,
      })

      return ctx.response.status(200).send({ msg: 'Password updated successfully!' })
      // return ctx.auth.use("web").attempt(data.email, data.password)
    }




};
