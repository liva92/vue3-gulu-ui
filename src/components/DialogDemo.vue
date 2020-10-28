<template>
<div>Dialog 示例</div>
<h1>示例1</h1>
<Button @click="toggle">toggle</Button>
<Dialog v-model:visible="x" :closeOnClickOverlay="false" :ok="f1" :cancel="f2">
    <template v-slot:title>
        <strong>加粗的标题</strong>
    </template>
    <template v-slot:content>
        <strong>hi</strong>
        <div>我是内容</div>

    </template>
</Dialog>
<div>
    <h1>示例2-动态挂在节点</h1>
    <Button @click="showDialog">show</Button>
</div>
</template>

<script lang="ts">
import Dialog from "../lib/Dialog.vue";
import Button from "../lib/Button.vue";
import {
    ref,
    h
} from "vue";
import {
    openDialog
} from "../lib/openDialog"
export default {
    components: {
        Dialog,
        Button,
    },
    setup() {
        const x = ref(false);
        const toggle = () => {
            x.value = !x.value;
        };
        const f1 = () => {
            return true
        }
        const f2 = () => {}
        const showDialog = () => {
            openDialog({
                title: '标题',
                content: '你好',
                ok() {
                    console.log('ok')
                },
                cancel() {
                    console.log('cancel')
                },
                closeOnClickOverlay: true
            })
        }

        return {
            x,
            toggle,
            f1,
            f2,
            showDialog
        };
    },
};
</script>
