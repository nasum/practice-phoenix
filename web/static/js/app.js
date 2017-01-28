import normalize from "normalize.css";
import Vue from "vue";
import myHeader from "./components/myHeader.vue"

window.onload = () => {
  normalize
  const app = new Vue({
    el: "#app",
    data: {
      message: 'Hello Vue!'
    },
    components: {
      myHeader
    }
  })
}
