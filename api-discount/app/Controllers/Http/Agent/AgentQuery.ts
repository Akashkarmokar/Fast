import User from 'App/Models/User'
 import Database from '@ioc:Adonis/Lucid/Database'

export default class AgentQuery{


  searchUsername(username){
    return Database.from('users').where('username','like', `${username}%`).count('* as total')
  }
  register(data){
    return User.create(data);
  }
  updateUser(column, value, data){
    return User.query().where(column, value).update(data)
  }
  getSingleUser(key:string, value:string){
    return User.query().where(key, value).first();
  }

  singleUserToken(column, value, token) {
    return User.query().where(column, value).where('forgot_code', token).first()
  }
  getSingleUserInfo(column, value) {
    return User.query().where(column, value).first()
  }
  updateOnline(uid, isOnline){
    return User.query().where('id', uid).update({is_online : isOnline})
  }
}
