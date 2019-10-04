<template>
  <div id="app">
    <app-header></app-header>
    <router-view></router-view>
  </div>
</template>

<script>
import HomeHeader from './components/HomeHeader'

export default {
  components: {
    appHeader: HomeHeader
  }
}
</script>

<style>
</style>
