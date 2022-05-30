import { schema, rules} from '@ioc:Adonis/Core/Validator'
import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
export default class UserValidator{
    public async validateAccessSchema(ctx : HttpContextContract){
      const accesshema = schema.create({
        id: schema.number(),
        access: schema.number(),
      })
      const msg =  {
        'id.required': 'User is required',
        'access.number': 'Access token is required'
      }
      try {
        const payload = await ctx.request.validate({ schema: accesshema, messages : msg })
        return payload
      } catch (error) {
         return ctx.response.status(422).send(error.messages)
      }
    }
    public async validateNewUserSchema(ctx : HttpContextContract){
      const accesshema = schema.create({
        first_name : schema.string({
          escape: true,
          trim: true
        }),
        last_name : schema.string({
          escape: true,
          trim: true
        }),
        email: schema.string({trim: true}, [
          rules.email({
            sanitize: true,
          }),

        ]),
        phone: schema.string({trim: true}, [
          rules.minLength(5)
        ]),
        // date_of_birth: schema.string(),
      })
      const msg =  {
        'first_name.required': 'Firstname is required',
        'last_name.required': 'Lastname is required',
        'phone.required': 'Phone Number is required',
        // 'date_of_birth.required': 'Date Of Birth is required',
        'email.required': 'Email is required',
        'email.unique': 'Email is already in use',
        'email.email': 'Invalid email address',
      }
      try {
        const payload = await ctx.request.validate({ schema: accesshema, messages : msg })
        return payload
      } catch (error) {
         return ctx.response.status(422).send(error.messages)
      }
    }

    public async getLastMessage(ctx:HttpContextContract){
      const reciverUserSchema = schema.create({
        id: schema.number(),
      })

      await ctx.request.validate({schema:reciverUserSchema})
    }
}
