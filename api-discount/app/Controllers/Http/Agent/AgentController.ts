import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import AuthService from './AgentService';
import AuthValidator from './AgentValidator';
// const fs = require('fs');

// const path = require('path');

export default class AuthController {
  private agentService : AuthService
  private agentValidator : AuthValidator

  constructor () {
    this.agentService =  new AuthService()
    this.agentValidator =  new AuthValidator()
  }

  async register(ctx : HttpContextContract){
    await this.agentValidator.validateSignupSchema(ctx)
    return this.agentService.register(ctx);
  }

  async login(ctx : HttpContextContract){
    await this.agentValidator.validateLoginSchema(ctx)
    return this.agentService.agent_login(ctx)
    // let data = ctx.request.all();

    // try{
    //   let user = await ctx.auth.use("web").attempt(data.email, data.password)
    //   return user
    // }catch (error) {
    //   return ctx.response.status(401).send({ msg: 'Invalid email or password. Please try again.' })
    // }

  }

  async getUser(ctx:HttpContextContract){
    try{
      return ctx.auth.use('web').authenticate();
    }catch(error){
      return false
    }
  }

  async logout({auth}){
    await auth.logout()
    return "Successfully logout"
  }


  async verifyEmail(ctx: HttpContextContract) {
    try{
      let validateData = await this.agentValidator.validateVerificationData(ctx)
       let data =ctx.request.all()
       data.verificationCode =validateData.verificationCode
       data.email =validateData.email
       return this.agentService.verifyEmail(ctx)
    }catch(error){
     return ctx.response.status(422).send(error.messages)
    }

   }
 async sendResetToken(ctx : HttpContextContract){
   try {
     let validatedData = await this.agentValidator.validateResetSchema(ctx)
     return this.agentService.sendResetToken(ctx,validatedData)
   } catch (error) {
     return ctx.response.status(422).send(error.messages)
   }
  }


 async verifyCode(ctx: HttpContextContract) {
   try {
     let validatedData = await this.agentValidator.validateTokenData(ctx)

     return this.agentService.verifyCode(ctx, validatedData)
   } catch (error) {
     return ctx.response.status(422).send(error.messages)
   }

 }

 async passwordReset(ctx: HttpContextContract) {
   try {
     let validatedData = await this.agentValidator.validateNewPasswordData(ctx)
     return this.agentService.passwordReset(ctx, validatedData)
   } catch (error) {
     return ctx.response.status(422).send(error.messages)
   }

 }




}
