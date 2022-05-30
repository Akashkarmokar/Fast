import Chat from 'App/Models/Chat'
import Inbox from 'App/Models/Inbox';
import Ws from 'App/Services/Ws';
export default class ChatQuery{
    public async storeMessage(data) {
      const input = await Chat.create(data);
      Ws.io.emit('messageRecived', input);
      return input;
    }
    public async getAllMessagesViaInboxKey(inboxKey) {
       return Chat.query().where('inbox_key', inboxKey);
    }
    public async makeUnseen(user_id, other_id) {
       return Chat.query().update({'is_seen': 1}).where(q=>{
         q.where('recever_id', user_id).andWhere('user_id', other_id);
       });
    }
    public async createInbox(data) {
      const conv_have = await Inbox.query().where('inbox_key', data.inbox_key).first();
      if (conv_have != null) {
        // console.log("conv"+conv_have);
         return conv_have;
        }
        
        const create = await Inbox.create(data);
        //  console.log("conv"+create);
        
      return create;
   }
}
