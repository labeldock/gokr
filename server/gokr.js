const router = require('express').Router()
const axios = require('axios')
const _get = require('lodash/get')

const fs = require('fs');
const path = require('path');
const tokenContent = fs.readFileSync(path.resolve(__dirname,'../token.json'));
const tokenData    = JSON.parse(tokenContent);
const token = _get(tokenData,"['data.go.kr']['dev']");

const storeApi = axios.create({
  baseURL:"http://apis.data.go.kr/B553077/api/open/sdsc/",
  params: {
    ServiceKey: token,
    type: 'json'
  }
});

router.get('/list',(req,res)=>{
  res.status(200).send({foo:"ba2r"})
})

module.exports = router;