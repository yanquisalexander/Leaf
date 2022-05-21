<template>
  <v-bottom-navigation
    v-if="isMobile"
    background-color="#fff"
    color="#4527a0"
    shift
    grow
    fixed
  >
    <v-btn to="/">
      <span>Dashboard</span>

      <v-icon>mdi-monitor-dashboard</v-icon>
    </v-btn>

    <v-btn to="/database">
      <span>Database</span>

      <v-icon>mdi-server</v-icon>
    </v-btn>

    <v-btn to="/storage">
      <span>Storage</span>

      <v-icon>mdi-folder-outline</v-icon>
    </v-btn>

    <v-btn to="/users">
      <span>Users</span>

      <v-icon>mdi-account-group-outline</v-icon>
    </v-btn>


  </v-bottom-navigation>
</template>

<script>
export default {
    name: 'SiteBottomNavigation',
    data () {
        return {
            isMobile: window.Leaf.mobile
        }
         
         }
  }
</script>

<style>
</style>