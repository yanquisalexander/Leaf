<template>
  <v-app id="leaf">
      <LayoutBroker :layouts="layouts" :current="this.$route.meta.layout || 'ApplicationLayout'" />
      <GlobalToast ref="vtoast" />
  </v-app>
</template>

<script>
import LayoutBroker from 'vue-layout-broker';

import ApplicationLayout from "./layouts/ApplicationLayout.vue";

const layouts = {
  ApplicationLayout,
}

import GlobalToast from "./components/global-toast.vue";
export default {
  name: 'Application',
  components: {
    LayoutBroker,
    GlobalToast
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
    window.Notifier = this.$refs.vtoast
  }
}
</script>