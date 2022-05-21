<template>
  <div>
    <v-main id="leaf-mountpoint">
      <SiteHeaderComponent />
      <router-view />
    </v-main>
    <SiteBottomNavigation />
  </div>
</template>

<script>
import SiteHeaderComponent from '../components/site-header'
import SiteBottomNavigation from '../components/site-bottom-navigation'

export default {
  components: {
    SiteHeaderComponent,
    SiteBottomNavigation
},
}
</script>