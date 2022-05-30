import Route from '@ioc:Adonis/Core/Route'
Route.group(()=>{
Route.get('getPropertyState', 'ThirdParty/ThirdPartyController.getPropertyState')
})
Route.group(()=>{
Route.post('uploadImage', 'ThirdParty/ThirdPartyController.uploadImage')
Route.get('download', 'ThirdParty/ThirdPartyController.download')
})
// .middleware('both')
//
