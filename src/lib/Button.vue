<template>
  <button class="gulu-button" :class='`theme-${theme}`'>
    <slot />
  </button>
</template>

<script>
export default {
  props: {
    theme: {
      type: String,
      default: "button",
    },
  },
};
</script>