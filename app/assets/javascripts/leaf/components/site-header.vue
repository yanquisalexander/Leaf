<template>
  <v-app-bar id="site-header" color="white" flat fixed app>
    <div class="site-header-wrap">
      <div class="title">
        <router-link
          class="site-header--text-logo"
          style="cursor: pointer"
          to="/"
          >Kode <span>Leaf</span
          ><v-icon right class="site-header--icon">mdi-leaf</v-icon></router-link
        >
      </div>

      <div class="site-navigation--nav hidden-sm-and-down" role="navigation">
        <v-btn text class="site-nav--btn" active-class="site-nav--btn-active" to="/">
          <v-icon left>mdi-monitor-dashboard</v-icon>
          Dashboard
          </v-btn
        >

        <v-btn text class="site-nav--btn" active-class="site-nav--btn-active" to="/database">
          <v-icon left>mdi-server</v-icon>
          Database
          </v-btn
        >

        <v-btn text class="site-nav--btn" active-class="site-nav--btn-active" to="/storage">
          <v-icon left>mdi-folder-outline</v-icon>
          Storage
          </v-btn
        >

        <v-btn text class="site-nav--btn" active-class="site-nav--btn-active" to="/users">
          <v-icon left>mdi-account-group-outline</v-icon>
          Users
          </v-btn
        >


      </div>
      <v-spacer></v-spacer>
      <div class="header-user-panel--nav"></div>
    </div>
  </v-app-bar>
</template>

<script>
export default {
  name: 'SiteHeaderComponent'
}
</script>
