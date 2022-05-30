import { DateTime } from 'luxon'
import Hash from '@ioc:Adonis/Core/Hash'
import {
  column,
  beforeSave,
  BaseModel,
  hasOne,
  HasOne,
  HasMany,
  hasMany,
  scope
} from '@ioc:Adonis/Lucid/Orm'
import Conversation from './Conversation'
import Inbox from './Inbox'
import Chat from './Chat'

export default class User extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public first_name: string

  @column()
  public last_name: string

  @column()
  public email: string

  @column()
  public gender: string

  @column()
  public username: string
  @column()
  public user_type: string
  @column()
  public job_title: string
  @column()
  public branch_location: string
  @column()
  public access: number

  @column()
  public profile_pic: string
  @column()
  public date_of_birth: string
  @column()
  public phone: number

  @column()
  public forgot_code: string

  @column()
  public is_banned: string
  @column()
  public is_online: string

  @column()
  public cover: string

  @column({ serializeAs: null })
  public password: string

  @column()
  public rememberMeToken?: string

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @beforeSave()
  public static async hashPassword (user: User) {
    if (user.$dirty.password) {
      user.password = await Hash.make(user.password)
    }
  }

  @hasOne(() => Conversation, {
    // onQuery: (query) =>{
    //   query.whereNot('is_close', 1)
    // },
    foreignKey: 'inbox_key',
    localKey: 'phone'
  })
  public conversation: HasOne<typeof Conversation>

  @hasOne(() => Conversation, {
    // onQuery: (q) => {
    //   q.whereNot('is_close', 1);
    // },
    foreignKey: 'user_id',
    localKey: 'id'

  })
  public conversationUser: HasOne<typeof Conversation>

  @hasOne(() => Inbox, {
    foreignKey: 'buddy_id',
    localKey: 'id'
  })
  public inbox: HasOne<typeof Inbox>


  @hasMany(() => Chat, {
    foreignKey: 'userId',
    localKey: 'id'
  })
  public sendFrom: HasMany<typeof Chat>

  @hasMany(()=>Chat,{
    foreignKey: 'receverId',
    localKey:'id'
  })
  public reciveFrom: HasMany<typeof Chat>
  
  
}
