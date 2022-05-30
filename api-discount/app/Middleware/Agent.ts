import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

export default class Agent {
  public async handle ({auth, response}: HttpContextContract, next: () => Promise<void>) {
    let check :any = await auth.use('web').authenticate()
    if(!check || (check && check.user_type !="AGENT") ){
      return response.status(401).send({ message: 'Invalid  credentials!' })
    }
    await next()
  }
}
