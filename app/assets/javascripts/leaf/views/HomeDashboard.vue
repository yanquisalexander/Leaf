<template>
  <div id="leaf-dashboard">
      <main class="main-panel">
          <div class="welcome-panel">
              <img src="https://avatars.githubusercontent.com/u/70536072?s=200&v=4" class="avatar">
              <div class="inline-panel">
                  <p class="welcome-title">Hi, $leaf.username!</p>
                  <p class="welcome-subtitle">Manage your Kode Leaf instance</p>
              </div>
          </div>
          <DashboardSummary/>
      </main>
  </div>
</template>

<script>
import DashboardSummary from '../components/dashboard/Summary.vue'
export default {
  components: { DashboardSummary },
    metaInfo: {
        title: 'Dashboard'
    },
}
</script>

<style>

</style>