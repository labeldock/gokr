<template>
  <section class="container">
    <div id="map" class="map" tabindex="0" style="width:500px;height:500px;"></div>
    <button @click="mapconsole">log</button>
    <input type="text" v-model="storeSearch" @keyup.enter="search(storeSearch)">
  </section>
</template>

<script>
import axios from 'axios';

export default {
  components: {
    
  },
  data:()=>{
    return {
      storeSearch:""
    }
  },
  methods:{
    search (key){
      //공공데이터 인증키를 어케 넣냐 ㅡㅡ
    },
    mapconsole (){
      console.log(this.map);
    }
  },
  mounted (){
    const { Map, View, TileLayer, XYZ, proj } = require('~/libs/open-layers');
    this.map = new Map({
      target: 'map',
      layers: [
          new TileLayer({
            source: new XYZ({
              url: 'https://{a-c}.tile.openstreetmap.org/{z}/{x}/{y}.png'
            })
          })
        ],
        view: new View({
          center: proj.fromLonLat([127.05, 37.45]),
          zoom: 10
        })
    });
  }
}
</script>

<style>
</style>
