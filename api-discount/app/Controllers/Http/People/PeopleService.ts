import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import PeopleQuery from './PeopleQuery';
export default class PeopleService {
    private peopleQuery : PeopleQuery
    constructor(){
      this.peopleQuery = new PeopleQuery
    }
    public async getClientInfo(ctx : HttpContextContract){
      let data = ctx.request.all()
      const people_id = data.id
      const user= await this.peopleQuery.getClientInfo(people_id)
      return user
   }
    public async getPeopleByLimit(ctx : HttpContextContract){
      const page = ctx.request.all().page ? ctx.request.all().page : 1
      const limit = ctx.request.all().limit ? ctx.request.all().limit : 10
      const user= await this.peopleQuery.getPeopleByLimit(page, limit)
      return user
   }
    public async getNotesByLimit(ctx : HttpContextContract){
      let data = ctx.request.all()
      const people_id = data.id
      const page = data.page ? data.page : 1
      const limit = data.limit ? data.limit : 10
      const user= await this.peopleQuery.getNotesByLimit(page, limit, people_id)
      return user
   }
   public async deletePeople(ctx : HttpContextContract){
    let data = ctx.request.all()
    const people_id:number = data.id
    return await this.peopleQuery.deletePeople( people_id)
   }
   public async addPeople(ctx:HttpContextContract){
    const data = ctx.request.all();
    return this.peopleQuery.addPeople(data)
   }
   public async addNotes(data){
    return this.peopleQuery.addNotes(data)
   }
};
