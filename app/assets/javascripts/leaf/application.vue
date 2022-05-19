<template>
  <v-app id="leaf">
      <LayoutBroker :layouts="layouts" :current="this.$route.meta.layout || 'ApplicationLayout'" />
  </v-app>
</template>

<script>
import LayoutBroker from 'vue-layout-broker';

import ApplicationLayout from "./layouts/ApplicationLayout";

const layouts = {
  ApplicationLayout,
}
export default {
  components: {
    LayoutBroker,
  },
  metaInfo: {
    // if no subcomponents specify a metaInfo.title, this title will be used
   title: 'Leaf',
   titleTemplate: '%s - '+ 'Leaf',
  },
  data() {
    return {
      layouts,
    }
  },
  mounted() {
     var MiniProfiler = document.createElement("script");
    MiniProfiler.async = true
    MiniProfiler.src =
      '/mini-profiler-resources/includes.js?v=12b4b45a3c42e6e15503d7a03810ff33'
    MiniProfiler.type = 'text/javascript'
    MiniProfiler.id = 'mini-profiler'
    MiniProfiler.setAttribute(
      'data-css-url',
      '/mini-profiler-resources/includes.css?v=12b4b45a3c42e6e15503d7a03810ff33'
    )
    MiniProfiler.setAttribute('data-version', '12b4b45a3c42e6e15503d7a03810ff33')
    MiniProfiler.setAttribute('data-path', '/mini-profiler-resources/')
    MiniProfiler.setAttribute('data-horizontal-position', 'left')
    MiniProfiler.setAttribute('data-vertical-position', 'top')
    MiniProfiler.setAttribute('data-ids', '')
    MiniProfiler.setAttribute('data-trivial', 'false')
    MiniProfiler.setAttribute('data-children', 'false')
    MiniProfiler.setAttribute('data-max-traces', '20')
    MiniProfiler.setAttribute('data-controls', 'false')
    MiniProfiler.setAttribute('data-total-sql-count', 'false')
    MiniProfiler.setAttribute('data-authorized', 'true')
    MiniProfiler.setAttribute('data-toggle-shortcut', 'Alt+P')
    MiniProfiler.setAttribute('data-start-hidden', 'false')
    MiniProfiler.setAttribute('data-collapse-results', 'true')
    MiniProfiler.setAttribute('data-hidden-custom-fields', '')
    MiniProfiler.setAttribute('data-html-container', 'body')
    document.head.append(MiniProfiler)
  }
}
</script>