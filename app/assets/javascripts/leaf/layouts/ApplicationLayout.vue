<template>
<v-main id="leaf-mountpoint">
  <SiteHeaderComponent />
  <router-view />
</v-main>
</template>

<script>
import SiteHeaderComponent from '../components/site-header'

export default {
  components: {
    SiteHeaderComponent
},
}
</script>