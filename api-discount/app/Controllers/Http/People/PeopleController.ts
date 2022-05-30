import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import PeopleService from './PeopleService';
import PeopleValidator from './PeopleValidator';
export default class PeopleController {
  private peopleService : PeopleService
  private peopleValidator : PeopleValidator
  constructor () {
    this.peopleService =  new PeopleService()
    this.peopleValidator =  new PeopleValidator()
  }
  public async getClientInfo(ctx : HttpContextContract) {
    return this.peopleService.getClientInfo(ctx)
  }
  public async getPeopleByLimit(ctx : HttpContextContract) {
    return this.peopleService.getPeopleByLimit(ctx)
  }
  public async getNotesByLimit(ctx : HttpContextContract) {
    return this.peopleService.getNotesByLimit(ctx)
  }
  public async deletePeople(ctx : HttpContextContract) {
    return this.peopleService.deletePeople(ctx)
  }
  public  async addPeople(ctx : HttpContextContract){
    await this.peopleValidator.validatePeopleSchema(ctx)
    return this.peopleService.addPeople(ctx)
  }
  public  async addNotes(ctx : HttpContextContract){
    let data = await this.peopleValidator.validateNoteSchema(ctx)
    return this.peopleService.addNotes(data)
  }
}
