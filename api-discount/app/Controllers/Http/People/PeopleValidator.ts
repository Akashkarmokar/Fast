import { schema, rules} from '@ioc:Adonis/Core/Validator'
import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
export default class PeopleValidator{
    public async validatePeopleSchema(ctx : HttpContextContract){
      const limitUserSchema = schema.create({
        first_name: schema.string(),
        last_name: schema.string(),
        email: schema.string({trim: true}, [
          rules.email(),
        ]),
        contact: schema.string(),
      })
      const msg =  {
        'first_name.required': 'First name is required',
        'last_name.required': 'Last name is required',
        'email.required': 'Email is required',
        'email.email': 'Email must a valid email address',
        'contact.required': 'Phone number is required',
        'first_name.string':'First name must be a string',
        'last_name.string':'Last name must be a string',
      }
      try {
        const payload = await ctx.request.validate({ schema: limitUserSchema, messages : msg })
        return payload
      } catch (error) {
         return ctx.response.status(422).send(error.messages)
      }
    }
    public async validateNoteSchema(ctx : HttpContextContract){
      const limitUserSchema = schema.create({
        note: schema.string(),
        people_id: schema.number()
      })
      const msg =  {
        'note.required': 'Note is required',
        'people_id.number': 'Invalid People',
        'last_name.string':'Last name must be a string',
      }
      try {
        const payload = await ctx.request.validate({ schema: limitUserSchema, messages : msg })
        return payload
      } catch (error) {
         return ctx.response.status(422).send(error.messages)
      }
    }
}
