import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import ConversationQuery from './ConversationQuery';
import Env from '@ioc:Adonis/Core/Env'
import Conversation from 'App/Models/Conversation';

const accountSid = Env.get('TWILIO_SID') as string;
const authToken = Env.get('TWILIO_TOKEN') as string;
const FROM_NUMBER = Env.get('TWILIO_FROM_NUMBER') as string;
const client = require('twilio')(accountSid, authToken);

// const MessagingResponse = require('twilio').twiml.MessagingResponse;
// const VoiceResponse = require('twilio').twiml.VoiceResponse;

export default class ConversationService {
  private conversationQuery: ConversationQuery
  constructor() {
    this.conversationQuery = new ConversationQuery
  }
  public async callingDiscount(ctx: HttpContextContract){
   console.log(ctx)
    client.calls
    .create({
       twiml: '<Response><Say>Welcome to future mortgage. very nice to meet you! Thank you !!!</Say></Response>',
       to: '+18004193630',
      //  to: '+8801571731870',
       from: FROM_NUMBER
     })
    .then(call => console.log(call.sid));
  }
  public async sendSms(ctx: HttpContextContract){
    const user_id = ctx.auth.user?.id;
    const data = ctx.request.all();
    data.sender_id = user_id;

    const peopleInfo:any = await this.conversationQuery.getPeopleDetails(data.people_id);

    const convData: any = {};
    const clientMessage: any = {};
    convData.from_id = user_id;
    convData.people_id = data.people_id;
    convData.inbox_key = peopleInfo.contact;
    const createConve = await this.conversationQuery.createConversation(convData);
    if (createConve) {
      client.messages.create({
        body: data.message_data,
        to: peopleInfo.contact,
        from: FROM_NUMBER
      }).then((message) => {
        // console.log(message)
        clientMessage.inbox_key = peopleInfo.contact;
        clientMessage.msg = JSON.stringify(message);
        clientMessage.message_data = data.message_data;
        clientMessage.status = "DELEVERED";
        clientMessage.people_id = data.people_id
        return this.conversationQuery.storeMessage(clientMessage);
      }
      )
         .catch((error) => {
          console.log(error)
          return false
        })
    }

    data.created_at = new Date().toISOString();
    data.is_reply = 0;
    data.status = 'DELIVERED';
    return data;

  }
  public async storeMessage(ctx: HttpContextContract) {
    const id = ctx.auth.user?.id;
    const data = ctx.request.all();
    data.sender_id = id;

    // const inboxKey = this.buildInboxKey(data.sender_id, data.recever_id);
    const inboxKey = data.to_number;
    const convData: any = {};
    const clientMessage: any = {};

    convData.from_id = id;
    convData.people_id = data.recever_id;
    convData.inbox_key = inboxKey;

    // console.log(convData);


    const createConve = await this.conversationQuery.createConversation(convData);
    // console.log(createConve);

    // return

    // data.inbox_key = inboxKey;

    if (createConve) {
      client.messages.create({
        body: data.message_data,
        to: data.to_number,
        from: FROM_NUMBER
      }).then((message) => {
        console.log(message)
        clientMessage.inbox_key = inboxKey;
        clientMessage.msg = JSON.stringify(message);
        clientMessage.message_data = data.message_data;
        clientMessage.status = "DELEVERED";
        clientMessage.people_id = data.recever_id;

        return this.conversationQuery.storeMessage(clientMessage);
      }
      )
        // here you can implement your fallback code
        .catch((error) => {
          console.log(error)
          return false
        })

    }

    data.created_at = new Date().toISOString();
    data.is_reply = 0;
    data.status = 'DELIVERED';
    return data;
  }

  public async getAllSms(ctx: HttpContextContract){
    const data = ctx.request.all();
    const peopleInfo:any = await this.conversationQuery.getPeopleDetails(data.id);
    const key = await Conversation.query().where('inbox_key', peopleInfo.contact).first();
    if (key == null) {
      return [];
    }
    return this.conversationQuery.getAllMessagesViaInboxKey(key?.inbox_key)

  }
  public async getAllMessagesViaInboxKey(ctx: HttpContextContract) {
    // const id: any = ctx.auth.user?.id;
    const data = ctx.request.all();
    const other_id:any = data.other_id.toString();

    // let str = other_id.substring(1);
    // // str = "+"+str;

    // if (other_id.charAt(0) != '+') {
    //   other_id[0] = '+';
    //   // other_id.replaceAt(0,"h");
    // }

    // console.log("Hello"+str);


    // const inboxKey = this.buildInboxKey(id, other_id);
    // const inboxKey = this.conversationQuery.getInboxKey(id, other_id);

    const key = await Conversation.query().where('inbox_key', other_id).first();
    // const key = await Conversation.query().where(q => {
    //   q.where('user_id', id).andWhere('from_id', other_id)
    // }).orWhere(q => {
    //   q.where('user_id', other_id).andWhere('from_id', id)
    // }).first();

    // console.log("inboxKey++"+JSON.stringify(key));

    if (key == null) {
      return [];
    }


    return this.conversationQuery.getAllMessagesViaInboxKey(key?.inbox_key)
  }
  public async messageReply(ctx: HttpContextContract) {
    const data = ctx.request.all();
    return this.conversationQuery.messageReply(data);
  }
  public async updateUnreadMessage(ctx: HttpContextContract) {
    const data = ctx.request.all();
    return this.conversationQuery.updateUnreadMessage(data);
  }
  public async closeConversation(ctx: HttpContextContract) {
    const data = ctx.request.all();
    return this.conversationQuery.closeConversation(data);
  }
  public async allCloseConversation() {
    return this.conversationQuery.allCloseConversation();
  }
  public async allUnCloseConversation() {

    return this.conversationQuery.allUnCloseConversation();
  }
  public async getLatestConversation(){
    // let latest_people = await this.conversationQuery.getLatestContacts()
    // let people_contacts:any = []
    // for (let item in latest_people) {
    //    people_contacts.push( latest_people[item].contact )
    // }
    return this.conversationQuery.getLatestConversation();
  }


  // buildInboxKey(sId, rId) {

  //   var sender_id = parseInt(sId);
  //   var recever_id = parseInt(rId);


  //   if (sender_id < recever_id) {
  //     var smallId = sender_id.toString();
  //     var bigId = recever_id.toString();
  //   }
  //   else {
  //     var smallId = recever_id.toString();
  //     var bigId = sender_id.toString();
  //   }

  //   // return this.conversationQuery.createConversation(smallId + bigId);

  //   return smallId + bigId;
  // }
};
