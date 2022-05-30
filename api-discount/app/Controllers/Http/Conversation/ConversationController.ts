import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import ConversationService from './ConversationService';
// import ConversationValidator from './ConversationValidator';
export default class ConversationController {
  private conversationService : ConversationService
  // private conversationValidator : ConversationValidator
  constructor () {
    this.conversationService =  new ConversationService()
    // this.conversationValidator =  new ConversationValidator()
  }
  public async storeMessage(ctx : HttpContextContract) {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.storeMessage(ctx)
  }
  public async sendSms(ctx : HttpContextContract) {
    return this.conversationService.sendSms(ctx)
  }
  public async messageReply(ctx : HttpContextContract) {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.messageReply(ctx)
  }
  public async updateUnreadMessage(ctx : HttpContextContract) {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.updateUnreadMessage(ctx)
  }
  public async closeConversation(ctx : HttpContextContract) {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.closeConversation(ctx)
  }
  public async allCloseConversation() {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.allCloseConversation()
  }
  public async allUnCloseConversation( ) {
    // console.log("allUnCloseConversation")
    //  await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.allUnCloseConversation()
  }
  public async getLatestConversation(){
    return this.conversationService.getLatestConversation()
  }
  public async getAllMessagesViaInboxKey(ctx : HttpContextContract) {
    // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.getAllMessagesViaInboxKey(ctx)
  }
  public async getAllSms(ctx : HttpContextContract) {
    return this.conversationService.getAllSms(ctx)
  }
  public async callingDiscount(ctx : HttpContextContract) {
     // await this.conversationValidator.validateConversationSchema(ctx)
    return this.conversationService.callingDiscount(ctx)
  }
}
