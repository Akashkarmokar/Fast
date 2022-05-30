import { DateTime } from 'luxon'
import { BaseModel, column, hasOne, HasOne } from '@ioc:Adonis/Lucid/Orm'
import Person from './Person'

export default class Conversation extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public people_id: number
  @column()
  public from_id: number
  @column()
  public inbox_key: string
  @column()
  public unread_message: number
  @column()
  public is_close: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @hasOne(() => Person, {
    foreignKey: 'id',
    localKey: 'people_id'
  })
  public people: HasOne<typeof Person>
}
