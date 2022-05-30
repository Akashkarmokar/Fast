import { DateTime } from 'luxon'
import { BaseModel, column , belongsTo, BelongsTo, hasOne, HasOne} from '@ioc:Adonis/Lucid/Orm'
import User from "./User";
import ClientChat from "./ClientChat";


export default class Person extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public user_id: number

  @column()
  public first_name: string

  @column()
  public last_name: string

  @column()
  public email: string

  @column()
  public contact: string

  @column()
  public birthday: string

  @column()
  public loan_purpose: string

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => User, {
    localKey: "id",
    foreignKey: "user_id",
  })
  public agent: BelongsTo<typeof User>;
  @hasOne(() => ClientChat, {
    localKey: "contact",
    foreignKey: "inbox_key",
    onQuery: (q) =>{
      q.orderBy('id', 'desc')
    }
  })
  public client_chat: HasOne<typeof ClientChat>;

}
