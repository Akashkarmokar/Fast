import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
  Route.get('getAllUsers/:userName?', 'User/UserController.getAllUsers')
  Route.get('getAllAgent', 'User/UserController.getAllAgent')
  Route.post('changeAccess', 'User/UserController.changeAccess')
  Route.post('addNewUser', 'User/UserController.addNewUser')
  Route.post('/addAgent', 'User/UserController.addAgent')
  Route.post('getUserByName', 'User/UserController.getUserByName')
  Route.post('uploadSingleFile', 'User/UserController.uploadSingleFile')
  Route.get('/getUnreadUsers','User/UserController.getUnreadUsers')
  Route.post('/getLastMessage','User/UserController.getLastMessage')
}).prefix('user').middleware('auth')
