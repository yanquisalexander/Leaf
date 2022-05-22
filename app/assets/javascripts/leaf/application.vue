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

  }
}
</script>