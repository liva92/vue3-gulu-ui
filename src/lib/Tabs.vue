<template>
<div class="gulu-tabs">
    <div class="gulu-tabs-nav" ref="container">
        <div class="gulu-tabs-nav-item" v-for="(t,index) in titles" :ref="el => { if (t===selected) selectedItem = el }" @click="select(t)" :class="{selected: t=== selected}" :key="index">{{t}}</div>
        <div class="gulu-tabs-nav-indicator" ref="indicator"></div>
    </div>
    <div class="gulu-tabs-content">
        <component :is='current' :key="current.props.title" />
    </div>
</div>
</template>

<script lang="ts">
import {
    computed,
    onMounted,
    onUpdated,
    watchEffect,
    ref,

} from 'vue'
import Tab from './Tab.vue'
export default {
    props: {
        selected: {
            type: String
        }
    },
    setup(props, context) {
        const selectedItem = ref < HTMLDivElement > (null)
        const indicator = ref < HTMLDivElement[] > (null)
        const container = ref < HTMLDivElement > (null)
        onMounted(() => {
            watchEffect(() => {
                //获取选中 nav 宽度
                const {
                    width
                } = selectedItem.value.getBoundingClientRect()
                //动态设置下划线 width
                indicator.value.style.width = width + 'px'
                const {
                    left: left1
                } = container.value.getBoundingClientRect()
                const {
                    left: left2
                } = selectedItem.value.getBoundingClientRect()
                const left = left2 - left1
                indicator.value.style.left = left + 'px'
            })
        })

        //获取子组件对象集合
        const defaults = context.slots.default()
        defaults.forEach((tab) => {
            if (tab.type !== Tab) {
                throw new Error('Tabs子标签必须是 Tab')
            }
        })
        const current = computed(() => {
            return defaults.filter((tag) => {
                return tag.props.title === props.selected
            })[0]
        })
        //获取子组件 title 数组
        const titles = defaults.map((tag) => {
            return tag.props.title
        })
        const select = (title: String) => {
            context.emit('update:selected', title)
        }
        return {
            defaults,
            titles,
            current,
            select,
            indicator,
            selectedItem,
            container
        }
    }

}
</script>

<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;

.gulu-tabs {
    &-nav {
        display: flex;
        color: $color;
        border-bottom: 1px solid $border-color;
        position: relative;

        &-item {
            padding: 8px 0;
            margin: 0 16px;
            cursor: pointer;

            &:first-child {
                margin-left: 0;
            }

            &.selected {
                color: $blue;
            }
        }

        &-indicator {
            position: absolute;
            height: 3px;
            background: $blue;
            left: 0;
            bottom: -1px;
            transition: all 250ms;
        }
    }

    &-content {
        padding: 8px 0;
    }

}
</style>
