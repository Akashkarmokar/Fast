import User from 'App/Models/User'
import CounterLiveRate from 'App/Models/CounterLiveRate'
import Database from '@ioc:Adonis/Lucid/Database'

export default class AuthQuery{

  getCounter(){
    return CounterLiveRate.query().where('id', 1).first()
  }
  updateCounter(){
    return CounterLiveRate.query().where('id', 1).increment('counter')
  }
  searchUsername(username){
    return Database.from('users').where('username','like', `${username}%`).count('* as total')
  }

  register(data){
    return User.create(data);
  }

  updateUser(column, value, data){
    return User.query().where(column, value).update(data)
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
