import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import User from './User'

export default class Chat extends BaseModel {
  @column({ isPrimary: true })
  public id: number
  @column()
  public userId: number
  @column()
  public receverId: number
  
  @column()
  public inbox_key: string
  @column()
  public msg: string
  @column()
  public files: string
  @column()
  public meta_data: string
  @column()
  public is_deleted: number
  
  // @column()
  // public total_reaction: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(()=>User,{
    foreignKey:'id',
    localKey:'userId'
  })
  public sendBy: BelongsTo<typeof User>

  @belongsTo(()=>User,{
    foreignKey:'id',
    localKey:'receverId'
  })
  public receveFrom: BelongsTo<typeof User>
}
