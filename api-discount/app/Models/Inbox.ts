import { DateTime } from 'luxon'
import { BaseModel, column } from '@ioc:Adonis/Lucid/Orm'

export default class Inbox extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public user_id: number
  @column()
  public buddy_id: number
  
  @column()
  public inbox_key: string
  @column()
  public group_name: string
  @column()
  public group_logo: string
  @column()
  public meta_data: string

  @column()
  public is_group: number
  @column()
  public is_seen: number
  @column()
  public is_deleted: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
