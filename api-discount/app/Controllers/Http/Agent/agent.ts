import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
 Route.post('/register', 'Agent/AgentController.register')
 Route.post('/login', 'Agent/AgentController.login')
 Route.get('/logout', 'Agent/AgentController.logout')
 Route.post('/sendResetToken', 'Agent/AgentController.sendResetToken')
 Route.post('/verifyCode', 'Agent/AgentController.verifyCode')
 Route.post('/passwordReset', 'Agent/AgentController.passwordReset')
 Route.post('/verifyEmail', 'Agent/AgentController.verifyEmail')
}).prefix('agent')
Route.group(()=>{
  Route.get('/getUser', 'Agent/AgentController.getUser')
}).prefix('agent').middleware('agent')
