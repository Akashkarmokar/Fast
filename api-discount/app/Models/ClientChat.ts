import { DateTime } from 'luxon'
import { BaseModel, column, belongsTo, BelongsTo } from '@ioc:Adonis/Lucid/Orm'
import Person from 'App/Models/Person'

export default class ClientChat extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public people_id: number

  @column()
  public inbox_key: string

  @column()
  public msg: string

  @column()
  public status: string

  @column()
  public message_data: string

  @column()
  public is_reply: string

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => Person, {
    localKey: 'id',
    foreignKey: 'people_id',
  })
  public people : BelongsTo<typeof Person>
}
