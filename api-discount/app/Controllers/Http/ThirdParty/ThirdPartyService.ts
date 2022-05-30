//  import ThirdPartyQuery from './ThirdPartyQuery';
 'use strict'
 import Application from '@ioc:Adonis/Core/Application'
 import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
 import Drive from '@ioc:Adonis/Core/Drive'
 const axios = require('axios');
 export default class ThirdPartyService {
    // private thirdPartyQuery : ThirdPartyQuery
    constructor(){
      // this.thirdPartyQuery = new ThirdPartyQuery
    }
    public async getPropertyState(ctx){
      let data = ctx.request.all();
      // return data.zipcode
      const res = await axios.get(`https://www.zipcodeapi.com/rest/pnIFMTPcslYA9kKJbTmHI3dZwKcSsWXbaTWzlcYuimtus1bTkrU294E8BJrJPo7u/info.json/${data.zipcode}/degrees`,{ mode: 'cors', useCredentails: true })
      // const res = await axios.get(`https://www.zipcodeapi.com/rest/DemoOnly00JGy2JPFcn2SN5t7Xz5PLck2ri1gkZCYHlDuho6yxTOaDTm8o1OTwUS/info.json/${data.zipcode}/degrees`,{ mode: 'cors', useCredentails: true },
      //   {
      //   });
      // return res
      if(res.status == 200){
        return ctx.response.status(200).send({ state: res.data.state })
      }else{
        return ctx.response.status(400).send({ msg: "Please give a valid zipcode. " })
      }
      //  const user = await this.thirdPartyQuery.getPropertyState()
      // return user
   }
   public async uploadImage(ctx:HttpContextContract){

        const profileImage = ctx.request.file('file', {
            size: '10mb',
            extnames: ['jpg', 'png', 'jpeg', 'webp'],
        })
        if (profileImage) {
          //  const fileName = `${profileImage.clientName}.${profileImage.extname}`
          //  let client=process.env.CLIENT? process.env.CLIENT: ''

          // return await Drive.put('local', fileName)

        //  let varia = await profileImage.move(await  Drive.getUrl('uploads'),{
        //     name: fileName,
        //   })
          // console.log(varia)
          const fileName = profileImage.clientName;
          const tmpPath = profileImage.tmpPath;
          const filePath = profileImage.toJSON();
          // await profileImage.moveToDisk('./')
          await profileImage.move(Application.tmpPath('uploads'), {
            name: fileName,
            overwrite: true, // overwrite in case of conflict
          })
          await Drive.put(fileName, profileImage.toString())
          return ctx.response.status(200).send({
              fileName:fileName,
              tmpPath:tmpPath,
              filePath:filePath
          })
        return ctx.response.status(422).send({ message: 'Invalid request' });
   }
  }
  async download (ctx:HttpContextContract) {
    let data = ctx.request.all()
      const filePath = `uploads/${data.fileName}`;
      const isExist = await Drive.exists(filePath);

      if (isExist) {
          return ctx.response.download(Application.tmpPath(filePath));
      }
      return 'File does not exist';
  }
 }
