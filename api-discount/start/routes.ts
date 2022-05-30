/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| This file is dedicated for defining HTTP routes. A single file is enough
| for majority of projects, however you can define routes in different
| files and just make sure to import them inside this file. For example
|
| Define routes in following two files
| ├── start/routes/cart.ts
| ├── start/routes/customer.ts
|
| and then import them inside `start/routes.ts` as follows
|
| import './routes/cart'
| import './routes/customer''
|
*/

import 'App/Controllers/Http/User/user'
import 'App/Controllers/Http/People/people'
import 'App/Controllers/Http/Chat/chat'
import 'App/Controllers/Http/Conversation/conversation'
import Route from '@ioc:Adonis/Core/Route'
import 'App/Controllers/Http/Auth/auth'
import 'App/Controllers/Http/Agent/agent'
import 'App/Controllers/Http/ThirdParty/thirdParty'
Route.get('getPMEToken', 'Auth/AuthController.getPMEToken')
Route.get('getThirdPartyApiResult', 'Auth/AuthController.getThirdPartyApiResult')

Route.get('/', ()=>{
  return{message:'You have landed in empty ocean!'}
})

// import Ws from 'App/Services/Ws'
// Route.get('test', () => {
//   Ws.io.emit('EvName', { username: 'virk' })
//   return "Joy"
// })
