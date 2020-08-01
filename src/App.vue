<template>
  <div>
    <router-view />
  </div>
</template>

<script lang='ts'>
import { ref, provide } from 'vue';
export default {
  name: "App",
  setup(){
    const asideVisible=ref(false)
    provide('asideVisible',asideVisible)
  }
};
</script>
