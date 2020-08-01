<template>
  <div>
  <Topnav/>
    <div class="banner">
      <h1>咕噜UI</h1>
      <h2>一个厉害的 UI 框架</h2>
      <p class="actions">
        <a href="https://github.com">GitHub</a>
        <router-link to="/doc">开始</router-link>
      </p>
    </div>
  </div>
</template>

<script>
import Topnav from '../components/Topnav.vue'
export default {
    components:{Topnav}
}
</script>