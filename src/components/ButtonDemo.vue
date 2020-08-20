<template>
  <h1>Button 示例</h1>

  <div class="box">
    <h2>示例1</h2>
    <Button>默认按钮</Button>
    <Button theme="button">button 按钮</Button>
    <Button theme="link">链接按钮</Button>
    <Button theme="text">文字按钮</Button>
  </div>
  <div class="box">
    <h2>示例2</h2>
    <div>
      <Button size="big">大大大</Button>
      <Button>普普通</Button>
      <Button size="small">小小小</Button>
    </div>
    <div>
      <Button theme="link" size="big">大大大</Button>
      <Button theme="link">普普通</Button>
      <Button size="small" theme="link">小小小</Button>
    </div>
    <div>
      <Button size="big" theme="text">大大大</Button>
      <Button theme="text">普普通</Button>
      <Button size="small" theme="text">小小小</Button>
    </div>
  </div>

  <div class="box">
    <h2>示例3</h2>
    <dir>
      <Button level="main">主要按钮</Button>
      <Button>普通按钮</Button>
      <Button level="danger">危险按钮</Button>
    </dir>
    <dir>
      <Button theme="link" level="main">主要链接按钮</Button>
      <Button theme="link">普通链接按钮</Button>
      <Button theme="link" level="danger">危险链接按钮</Button>
    </dir>
    <dir>
      <Button theme="text" level="main">主要文字按钮</Button>
      <Button theme="text">普通文字按钮</Button>
      <Button theme="text" level="danger">危险文字按钮</Button>
    </dir>
  </div>

  <div class="box">
    <h2>示例4</h2>
    <Button disabled>禁用按钮</Button>
    <Button theme="link" disabled>禁用链接按钮</Button>
    <Button theme="text" disabled>禁用按钮</Button>
  </div>
  <div class="box">
    <h2>示例5</h2>
    <Button loading>加载中</Button>
    <Button>加载完</Button>
  </div>
</template>

<script lang='ts'>
import Button from "../lib/Button.vue";
export default {
  components: { Button },
  setup() {},
};
</script>
<style lang="scss" >
  .box {
    margin: 20px 0;
  }
</style>