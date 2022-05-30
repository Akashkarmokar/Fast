import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import ChatService from './ChatService';
// import ChatValidator from './ChatValidator';
export default class ChatController {
  private chatService : ChatService
  // private chatValidator : ChatValidator
  constructor () {
    this.chatService =  new ChatService()
    // this.chatValidator =  new ChatValidator()
  }
  public async storeMessage(ctx : HttpContextContract) {
    // await this.chatValidator.validateChatSchema(ctx)
    return this.chatService.storeMessage(ctx)
  }
  public async getAllMessagesViaInboxKey(ctx : HttpContextContract) {
    // await this.chatValidator.validateChatSchema(ctx)
    return this.chatService.getAllMessagesViaInboxKey(ctx)
  }
}
