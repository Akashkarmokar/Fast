import Person from 'App/Models/Person'
import ClientNote from 'App/Models/ClientNote'
export default class PeopleQuery{
    public async getClientInfo(people_id){
      return Person.query().where('id', people_id).first()
    }
    public async getPeopleByLimit(page : number, limit : number)  {
        return Person.query().preload('agent').paginate(page,limit)
    }
    public async getNotesByLimit(page : number, limit : number, people_id : number)  {
        return ClientNote.query().where('people_id', people_id).paginate(page,limit)
    }
    public async deletePeople(id){
      return Person.query().where('id', id).delete()
    }
    public async addPeople(data){
      // console.log(data)
      return Person.create(data)
    }
    public async addNotes(data){
      return ClientNote.create(data)
    }
}
