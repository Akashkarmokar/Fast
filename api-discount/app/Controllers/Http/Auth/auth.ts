import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{

 Route.post('/register', 'Auth/AuthController.register')
 Route.post('/login', 'Auth/AuthController.login')
 Route.get('/logout', 'Auth/AuthController.logout')
 Route.get('/getCounter', 'Auth/AuthController.getCounter')

 Route.post('/sendResetToken', 'Auth/AuthController.sendResetToken')
 Route.post('/verifyCode', 'Auth/AuthController.verifyCode')
 Route.post('/passwordReset', 'Auth/AuthController.passwordReset')
 Route.post('/verifyEmail', 'Auth/AuthController.verifyEmail')

}).prefix('auth')
Route.group(()=>{
  Route.get('/getUser', 'Auth/AuthController.getUser')
}).prefix('auth')
// .middleware('auth')
