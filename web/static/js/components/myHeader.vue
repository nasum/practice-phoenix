<template>
  <header>
    <h1>
      Phoenix Practice
    </h1>
    <nav>
      <ul class="nav">
        <li @click="clickNav" data-target="home" :class="{ active: activeNav == 'home' }">
          home
        </li>
        <li @click="clickNav" data-target="setting" :class="{ active: activeNav == 'setting' }">
          setting
        </li>
      </ul>
      </ul>
    </nav>
  </header>
</template>

<script>
module.exports = {
  data: function(){
    return{
      activeNav: "home"
    }
  },
  methods: {
    clickNav: function(e){
      this.activeNav = e.target.dataset.target
    }
  }
}
</script>

<style scoped>
ul,li {
    margin:0;
    padding:0;
    list-style: none;
}

.nav > li {
  cursor: pointer;
  float: left;
  padding-left: 10px;
  padding-right: 10px;
}

.active {
  background-color: black;
  color: white;
}
</style>
