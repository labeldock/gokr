<template>
  <section class="container">
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
    }
  }
}
</script>

<style>
</style>
