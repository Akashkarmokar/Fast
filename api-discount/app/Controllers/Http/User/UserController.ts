import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import UserService from './UserService';
import UserValidator from './UserValidator';
export default class UserController {
  private userService : UserService
  private userValidator : UserValidator
  constructor () {
    this.userService =  new UserService()
    this.userValidator =  new UserValidator()
  }
  public async getAllUsers(ctx:HttpContextContract) {
    // await this.userValidator.validateUserSchema(ctx)
    return this.userService.getAllUsers(ctx)
  }
  public async getAllAgent(ctx:HttpContextContract) {
    // await this.userValidator.validateUserSchema(ctx)
    return this.userService.getAllAgent(ctx)
  }
  public async getUserByName(ctx:HttpContextContract) {
    // await this.userValidator.validateUserSchema(ctx)
    return this.userService.getUserByName(ctx)
  }
  public async changeAccess(ctx:HttpContextContract) {
    await this.userValidator.validateAccessSchema(ctx)
    return this.userService.changeAccess(ctx)
  }
  public async addNewUser(ctx:HttpContextContract) {
    await this.userValidator.validateNewUserSchema(ctx)
    return this.userService.addNewUser(ctx)
  }
  public async addAgent(ctx:HttpContextContract) {
    await this.userValidator.validateNewUserSchema(ctx)
    return this.userService.addAgent(ctx)
  }
  public async getUnreadUsers(ctx:HttpContextContract){
    // await this.userValidator.getUnreadUsers(ctx);
    return await this.userService.getUnreadUsers(ctx);
  }
  
  public async getLastMessage(ctx:HttpContextContract){
    await this.userValidator.getLastMessage(ctx);
    return await this.userService.getLastMessage(ctx);
  }
}
