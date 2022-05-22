<template>
<v-dialog v-model="show" max-width="500px">
    <v-container class="dialog">
    <SiteSpinner v-if="!updateChecker"/>
    <div class="update-checker-dialog" v-else>
      <p class="title text-center">Leaf Upgrade</p>
      <img :src="LeafUpdateIlustration" class="illustration"/>
      <p class="text">Current:&nbsp;
        <span>
          {{updateChecker.current}}
        </span>
      </p>
      <p class="text">Git version:&nbsp;
        <span>
          <a :href="'https://github.com/kodular-community/Leaf/commits/' + updateChecker.git.current_hash" target="_blank">
            {{updateChecker.git.current_hash | str_limit(10)}}
          </a>
        </span>
      </p>
    </div>
    </v-container>
</v-dialog>
</template>

<script>
import LeafUpdateIlustration from 'images/leaf_update.svg'

export default {
  name: 'UpdateChecker',
  props: {
     value: Boolean
  },
  data () {
    return {
      updateChecker : null,
      LeafUpdateIlustration : LeafUpdateIlustration
    }
  },
  mounted () {
      console.log('mounted')
  },
  methods: {
    checkUpdates() {
      $.ajax('/system/update_checker')
      .then((response) => {
                    this.updateChecker = response
                })
                .catch((error) => {
                    console.log(error)
                    this.error = true
                })
    }
  },
  computed: {
    show: {
      get () {
        return this.value
      },
      set (value) {
         this.$emit('input', value)
      }
    }
  },
watch: {
    show(visible) {
      if (visible) {
        this.updateChecker = null
        this.checkUpdates()
      } else {

      }
    }
  },
}
</script>