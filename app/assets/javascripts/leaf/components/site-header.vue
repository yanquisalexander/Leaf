<template>
  <v-app-bar id="site-header" color="white" flat fixed app>
    <div class="site-header-wrap">
      <v-app-bar-nav-icon class="d-block d-sm-none"></v-app-bar-nav-icon>
      <div class="title">
            <v-toolbar-title class="site-header--text-logo" style="cursor: pointer" @click="$router.push('/')"
            >Kodular <span>Leaf</span></v-toolbar-title
          >
      </div>

      <div class="site-navigation--nav hidden-sm-and-down" role="navigation">
        <v-btn text class="site-nav--btn" to="/">
          <v-icon left>mdi-</v-icon></v-btn
        >
      </div>
      <v-spacer></v-spacer>
      <div class="header-user-panel--nav">

      </div>
    </div>
  </v-app-bar>
</template>

<script>
export default {
  name: 'SiteHeaderComponent'
}
</script>