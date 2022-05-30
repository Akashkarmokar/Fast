
import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import ThirdPartyService from './ThirdPartyService';
// import ThirdPartyValidator from './ThirdPartyValidator';
export default class ThirdPartyController {
  private thirdPartyService : ThirdPartyService
  // private thirdPartyValidator : ThirdPartyValidator
  constructor () {
    this.thirdPartyService =  new ThirdPartyService()
    // this.thirdPartyValidator =  new ThirdPartyValidator()
  }
  async getPropertyState(ctx:HttpContextContract){
    console.log(ctx)
    return this.thirdPartyService.getPropertyState(ctx);
  }
  async uploadImage(ctx:HttpContextContract){
     return this.thirdPartyService.uploadImage(ctx);
  }
  async download(ctx:HttpContextContract){
     return this.thirdPartyService.download(ctx);
  }
}
