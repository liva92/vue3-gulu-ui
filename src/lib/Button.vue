<template>
<div :size='size'>
<button v-bind="rest">
  <slot></slot>
  </button>
</div>
  
</template>

<script>
export default {
    inheritAttrs:false,
    setup(props,context){
const {size,...rest}=context.attrs
return {size,rest}
    }
}
</script>