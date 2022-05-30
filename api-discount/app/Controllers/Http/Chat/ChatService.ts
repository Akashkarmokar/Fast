import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import ChatQuery from './ChatQuery';
export default class ChatService {
    private chatQuery : ChatQuery
    constructor(){
      this.chatQuery = new ChatQuery
    }
    public async storeMessage(ctx : HttpContextContract){
      const id = ctx.auth.user?.id;
      const data = ctx.request.all();
      data.user_id = id;

      const inboxKey = this.buildInboxKey(data.user_id, data.recever_id);
      data.inbox_key = inboxKey;

      const inboxData = {
        user_id: id,
        buddy_id: data.recever_id,
        inbox_key: inboxKey,
      };

      const createInbox = await this.chatQuery.createInbox(inboxData);

      if (createInbox) {
        // delete data.recever_id;
        return this.chatQuery.storeMessage(data);
      }

      return false;
   }
    public async getAllMessagesViaInboxKey(ctx : HttpContextContract){
      const id = ctx.auth.user?.id;
      const data = ctx.request.all();
      // const other_id = data.other_id;

      const inboxKey = this.buildInboxKey(id, data.recever_id);

      // console.log(data)

      this.chatQuery.makeUnseen(id, data.recever_id)

      return this.chatQuery.getAllMessagesViaInboxKey(inboxKey)
   }

   buildInboxKey(sId, rId) {

    var sender_id = parseInt(sId);
      var recever_id = parseInt(rId);


      if(sender_id<recever_id)
      {
        var smallId = sender_id.toString();
        var bigId = recever_id.toString();
      }
      else{
        var smallId = recever_id.toString();
        var bigId = sender_id.toString();
      }

     return smallId + bigId;
   }
};
