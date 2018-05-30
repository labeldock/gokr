cosnt { fileDoctor, prompt } = require('@sepalang/doctor')

fileDoctor(require("path").resolve(__dirname, "../"),async ({ json })=>{
  //setting json
  (await json.parse("./config/datago.json").catch(
    ()=>json.write("./config/datago.json",`{}`)
  )).write(async ({ query })=>{
    await prompt(`data.go.kr token (${ query.getProperty('token') })`,({ input })=>{
      if(!input) return
      query.setProperty('token',input)
    })
  })
  
  (await yaml.parse("./config/godb.yaml").catch(
    ()=>file.write("./config/godb.yaml")
  )).write(async { query }=>{
    await prompt(`godb url (${ query.getProperty('db[godb][url]')})`, query.autoSetProperty('db[godb][url]'));
    await prompt(`godb port (${ query.getProperty('db[godb][port]')})`, query.autoSetProperty('db[godb][port]'));
    await prompt(`godb id (${ query.getProperty('db[godb][id]')})`, query.autoSetProperty('db[godb][id]'));
    await prompt(`godb password (${ query.getProperty('db[godb][password]')})`, query.autoSetProperty('db[godb][password]'));
    query.setProperty("db[godb][database]","godb");
  })
})
.catch((e)=>{
  console.log(`exit`)
  process.exit(1)
});