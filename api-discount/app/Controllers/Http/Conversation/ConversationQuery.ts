import Database from '@ioc:Adonis/Lucid/Database';
import ClientChat from 'App/Models/ClientChat';
import Conversation from 'App/Models/Conversation'
import Person from 'App/Models/Person'

import Ws from 'App/Services/Ws';
export default class ConversationQuery{
    public async storeMessage(data) {
       return ClientChat.create(data);
    }
    public async getPeopleDetails(id){
      return Person.query().where('id', id).first()

    }
    public async createConversation(data) {
       const conv_have = await Conversation.query().where('inbox_key', data.inbox_key).first();
       if (conv_have != null) {
         // console.log("conv"+conv_have);
         // data.created_at = new Date().toISOString();
         var x = (new Date()).getTimezoneOffset() * 60000;
         var localISOTime = (new Date(Date.now() - x)).toISOString().slice(0,-1);

         await Conversation.query().where('inbox_key', data.inbox_key).update({
            is_close: 0,
            updated_at: localISOTime
         });
         //  return conv_have;
          return Conversation.query().where('inbox_key', data.inbox_key).first();
         }

         const create = await Conversation.create(data);
         //  console.log("conv"+create);

       return create;
    }
    public async getInboxKey(id, other_id) {
       const key = await Conversation.query().where(q => {
          q.where('people_id', id).andWhere('from_id', other_id)
       }).orWhere(q => {
         q.where('people_id', other_id).andWhere('from_id', id)
       }).first();

      //  console.log("Key"+key?.inbox_key);


       return key
    }
    public async getAllMessagesViaInboxKey(inboxKey) {
      //  console.log("inboxKey"+JSON.stringify(inboxKey));
       return ClientChat.query().where('inbox_key', inboxKey);
    }
    public async updateUnreadMessage(data) {
       return Conversation.query().where('inbox_key', data.inboxKey).update({
          'unread_message': data.unrearMessage
       });
    }
    public async closeConversation(data) {
       return Conversation.query().where('inbox_key', data.contact).update({
          'is_close': 1
       });
    }
    public async allCloseConversation() {
      return Database
      .from('people')
      .join('conversations', 'people.id', '=', 'conversations.people_id')
      .select('*')
      .where('conversations.is_close', 1)
      .orderBy('conversations.updated_at', 'desc')

      //  return Conversation.query().where('is_close', 1).preload('user');
    }
    public async getLatestContacts(){
      return Person.query().select('id', 'contact').limit(7)
    }
    public async getLatestConversation(){
      //  return ClientChat.query().whereIn('inbox_key',people_contacts).preload('people')
      // .select('id', 'people_id', 'msg', 'status', 'message_data','inbox_key')
      // .distinct('inbox_key')
      // .orderBy('id', 'desc')
      // .groupBy('inbox_key')
      return Person.query().whereHas('client_chat',(builder)=>{
        builder.orderBy('id', 'desc')
      }).preload('client_chat').limit(7)
    }
    public async allUnCloseConversation() {
      //  const conversation = await Conversation.query().where('is_close', 1);
      // return User.query().whereDoesntHave('conversation', (q)=>{
      //    q.where('is_close', 1);
      // }).preload('conversation')
      return Database
      .from('people')
      .join('conversations', 'people.id', '=', 'conversations.people_id')
      .select('*')
      .whereNot('conversations.is_close', 1)
      .orderBy('conversations.updated_at', 'desc')

      // return User.query().whereHas('conversationUser', (q)=>{
      //    // q.whereNot('is_close', 1);
      // })
      // .preload('conversation')
    }
    public async messageReply(data) {
       const inData:any = {};
       inData.is_reply = 1;
       inData.status = data.SmsStatus;
       inData.message_data = data.Body;
       inData.msg = JSON.stringify(data);
       inData.inbox_key = data.From;

      const input = await ClientChat.create(inData);
      Ws.io.emit('messageReplySocket', input);
      return input;
    }
}
