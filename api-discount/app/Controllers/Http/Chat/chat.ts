import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
  Route.post('storeMessage', 'Chat/ChatController.storeMessage')
  Route.post('getAllMessagesViaInboxKey', 'Chat/ChatController.getAllMessagesViaInboxKey')
}).prefix('chat').middleware('auth')
