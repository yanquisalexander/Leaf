<template>
  <div class="dashboard-summary">
    <SiteSpinner v-if="!DashboardSummary" />
    <div v-else>
      <v-row>
        <v-col sm="4" cols="12" class="dashboard-card">
          <span class="icon-container application-related">
            <v-icon> mdi-apps-box </v-icon>
          </span>
          <p class="text">Application</p>
          <router-link
          to="/apps/remote-config"
          tag="div"
          class="dashboard-card--item"
          v-ripple><v-icon>mdi-cellphone-cog</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Remote configuration</p>
              <p class="card-item-subtitle">
                Change your global app settings remotely
              </p>
            </div>
          </router-link>
          <router-link
          to="/apps/project-settings"
          tag="div"
          class="dashboard-card--item"
          v-ripple><v-icon>mdi-key-chain-variant</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Project settings</p>
              <p class="card-item-subtitle">
                Server-side settings (eg OAuth Credentials)
              </p>
            </div>
          </router-link>
        </v-col>


        <v-col sm="4" cols="12" class="dashboard-card">
          <span class="icon-container app-templates">
            <v-icon> mdi-code-json </v-icon>
          </span>
          <p class="text">Templates</p>
          <div class="dashboard-card--item" @click="window.Notifier.show({message: 'Not implemented', icon: '-', color: 'gray'})" v-ripple>
            <v-icon>mdi-page-layout-header</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Manage templates</p>
              <p class="card-item-subtitle">
                 Templates based on your data model
              </p>
            </div>
          </div>
          <div class="dashboard-card--item" v-ripple>
            <v-icon>mdi-store</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Template store</p>
              <p class="card-item-subtitle">
                Templates created by community members
              </p>
            </div>
          </div>
        </v-col>


        <v-col sm="4" cols="12" class="dashboard-card">
          <span class="icon-container system-info">
            <v-icon> mdi-server-network </v-icon>
          </span>
          <p class="text">Kode Leaf</p>
          <div class="dashboard-card--item" v-ripple>
            <v-icon>mdi-history</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Uptime</p>
              <p class="card-item-subtitle">
                {{DashboardSummary.uptime}}
              </p>
            </div>
          </div>
          <div class="dashboard-card--item" v-ripple @click.stop="showUpdateChecker = true">
            <v-icon>mdi-information-outline</v-icon>
            <div class="inline-panel">
              <p class="card-item-title">Version</p>
              <p class="card-item-subtitle">
                {{DashboardSummary.leaf_version}}
              </p>
            </div>
          </div>
        </v-col>
      </v-row>
    </div>
    <update-checker v-model="showUpdateChecker"/>
  </div>
</template>

<script>
import updateChecker from '../modals/update-checker.vue'
export default {
  components: { updateChecker },
    name: 'DashboardSummary',
    mounted() {
        this.fetchSummary()
    },
    methods: {
        fetchSummary() {
            $.ajax('/dashboard.json')
                .then((response) => {
                    this.DashboardSummary = response.dashboard
                    console.log(response.dashboard)
                })
                .catch((error) => {
                    console.log(error)
                    this.error = true
                })
        },
    },
    data() {
        return {
            DashboardSummary : null,
            showUpdateChecker: false,
            window: window
        }
    }
}
</script>
