<template>
  <v-menu
    bottom
    left
    offset-y
    transition="slide-y-transition"
  >
    <template v-slot:activator="{ on, attrs }">
      <v-btn
        icon
        width="auto"
        height="auto"
        id="current-user"
        v-bind="attrs"
        v-on="on"
      >
        <v-avatar size="32">
          <v-gravatar :email="currentUser.email" alt="User Avatar" :size="120" />
        </v-avatar>
      </v-btn>
    </template>

    <v-list dense rounded>
      <v-list-item
        active-class="no-active"
        to="/my/profile"
      >
        <v-list-item-icon>
          <v-icon>mdi-account-circle-outline</v-icon>
        </v-list-item-icon>
        <v-list-item-title>Mi Perfil</v-list-item-title>
      </v-list-item>
      <v-list-item
        active-class="no-active"
        to="/my/preferences"
      >
        <v-list-item-icon>
          <v-icon>mdi-cog-outline</v-icon>
        </v-list-item-icon>
        <v-list-item-title>Configuración</v-list-item-title>
      </v-list-item>

      <v-list-item
        active-class="no-active"
        to="/admin"
      >
        <v-list-item-icon>
          <v-icon>mdi-wrench-outline</v-icon>
        </v-list-item-icon>
        <v-list-item-title>Administración del Sitio</v-list-item-title>
      </v-list-item>
      <v-list-item
        active-class="no-active"
        @click = "userLogout"
      >
        <v-list-item-icon>
          <v-icon>mdi-wrench-outline</v-icon>
        </v-list-item-icon>
        <v-list-item-title>Cerrar Sesión</v-list-item-title>
      </v-list-item>
    </v-list>
  </v-menu>
</template>

<script>
export default {
    name: 'UserMenu',
  data() {
    return {
      currentUser: window.Leaf.currentUser
    }
  },
  methods: {
    userLogout () {
      $.ajax({
    url: '/users/sign_out',
    type: 'DELETE',
    success: function(result) {
        window.location.href = "/"
    }
});
    }
  }

}
</script>

<style></style>