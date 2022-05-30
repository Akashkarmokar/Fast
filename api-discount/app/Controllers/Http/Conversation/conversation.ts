import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
  Route.post('storeMessage', 'Conversation/ConversationController.storeMessage')
  Route.post('sendSms', 'Conversation/ConversationController.sendSms')
  Route.post('getAllMessagesViaInboxKey', 'Conversation/ConversationController.getAllMessagesViaInboxKey')
  Route.get('getAllSms', 'Conversation/ConversationController.getAllSms')

  Route.post('updateUnreadMessage', 'Conversation/ConversationController.updateUnreadMessage')
  Route.post('closeConversation', 'Conversation/ConversationController.closeConversation')
  Route.get('allCloseConversation', 'Conversation/ConversationController.allCloseConversation')
  Route.get('getLatestConversation', 'Conversation/ConversationController.getLatestConversation')
  Route.get('allUnCloseConversation', 'Conversation/ConversationController.allUnCloseConversation')
 }).prefix('conversation').middleware('auth')

Route.group(()=>{
  Route.post('messageReply', 'Conversation/ConversationController.messageReply')
  Route.get('callingDiscount', 'Conversation/ConversationController.callingDiscount')

}).prefix('conversation')
