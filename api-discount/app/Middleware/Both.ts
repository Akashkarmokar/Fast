import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

export default class Both {

  public async handle ({auth, response}: HttpContextContract, next: () => Promise<void>) {
    let check :any =await auth.use('web').authenticate()
    if(!check ){
      return response.status(401).send({ message: 'Invalid  credentials!' })
    }
    await next()
  }
}
