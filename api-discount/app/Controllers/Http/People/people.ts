import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
  Route.get('getClientInfo', 'People/PeopleController.getClientInfo')
  Route.get('getPeople', 'People/PeopleController.getPeopleByLimit')
  Route.post('addPeople', 'People/PeopleController.addPeople')
  Route.post('addNotes', 'People/PeopleController.addNotes')
  Route.get('getNotes', 'People/PeopleController.getNotesByLimit')
  Route.post('deletePeople', 'People/PeopleController.deletePeople')
}).prefix('people').middleware('auth')
