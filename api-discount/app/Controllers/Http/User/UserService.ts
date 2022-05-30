import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import UserQuery from './UserQuery';
export default class UserService {
    private userQuery : UserQuery
    constructor(){
      this.userQuery = new UserQuery
    }
    public async getAllUsers(ctx:HttpContextContract){
      const user = await this.userQuery.getAllUsers(ctx);
      // const user = await this.userQuery.getAllUsers()
      return user
   }
    public async getAllAgent(ctx:HttpContextContract){
      const user = await this.userQuery.getAllAgent(ctx);
       return user
   }
    public async getUserByName(ctx:HttpContextContract){
      const data = ctx.request.all()
      const user = await this.userQuery.getUserByName(data)
      return user
   }
    public async changeAccess(ctx:HttpContextContract){
      const data = ctx.request.all();
      return this.userQuery.changeAccess(data)
   }
    public async addNewUser(ctx:HttpContextContract){
      const data = ctx.request.all();
      return this.userQuery.addNewUser(data)
   }
    public async addAgent(ctx:HttpContextContract){
      const data = ctx.request.all();
      data.user_type = "AGENT"
      return this.userQuery.addAgent(data)
   }
   public async getUnreadUsers(ctx:HttpContextContract){
     return await this.userQuery.getUnreadUsers(ctx);
   }

   public async getLastMessage(ctx:HttpContextContract){
     const data = {
       loginUserId: ctx.auth.user?.id,
       recieverId: ctx.request.body().id
     }
     return await this.userQuery.getLastMessage(data);
   }
};
