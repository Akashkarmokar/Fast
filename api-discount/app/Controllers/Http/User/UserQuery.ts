import User from 'App/Models/User'
import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Chat from 'App/Models/Chat';
import Database from '@ioc:Adonis/Lucid/Database';
export default class UserQuery{
    public async getAllUsers(ctx:HttpContextContract) : Promise<User[]> {
      const id:any = ctx.auth.user?.id;
      let searchUserName = ctx.params.userName;
      const data = await User.query()
      //  .where('user_type', 'USER')
       .if(searchUserName,(query)=>{
         query.where('first_name','like',`%${searchUserName}%`).orWhere('last_name','like',`%${searchUserName}%`)
       })
       .preload('sendFrom', (q)=>{
         q
         .where('receverId', id)
         .orderBy('created_at','desc').groupLimit(1) // Group Limit to compare there last message
       }).preload('reciveFrom',(q)=>{
         q.where('userId',id)
         .orderBy('created_at','desc').groupLimit(1) // Group Limit to compare there last message
       })
       .preload('conversation')

      return data;
    }
    public async getAllAgent(ctx:HttpContextContract) : Promise<User[]> {
      const id:any = ctx.auth.user?.id;
      console.log(id)

       return User.query().where('user_type', 'AGENT').preload('sendFrom', (q)=>{
         q.where('user_id', id).orWhere('recever_id', id).andWhere('is_seen', 0);
       }).preload('conversation')

      //  .preload('inbox', (q)=>{
      //    q.where('user_id', id).orWhere('buddy_id', id)
      //  })
    }
    public async getUserByName(data) : Promise<User[]> {
       return User.query()
       .where((q) => {
         q.where('first_name', 'LIKE', '%'+data.search+'%')
         .orWhere('last_name', 'LIKE', '%'+data.search+'%')
       })
       .preload('conversation')

    }
    public async changeAccess(data) : Promise<User[]> {
       return User.query().where('id', data.id)
       .update({ access: data.access });
    }
    public async addNewUser(data)  {
        return User.create(data)
    }
    public async addAgent(data)  {
        return User.create(data)
    }

    public async getUnreadUsers(ctx:HttpContextContract){
      
      const id:number = ctx.auth.user?.id;
      const data = await User.query().where('id',
                Database
                .from('chats').where('recever_id',id).andWhere('is_seen',0).select('user_id')
      ).preload('sendFrom').preload('conversation')
      
      return data
    }

    public async getLastMessage(data){
      
      const lastChat = await Chat.query().where(query=>{
        query.where('user_id',data.loginUserId).orWhere('recever_id',data.recieverId)
      }).orWhere(query=>{
        query.where('user_id',data.recieverId).orWhere('recever_id',data.loginUserId)
      }).orderBy('created_at','desc').firstOrFail()
      
      return lastChat;
      
    }
}
