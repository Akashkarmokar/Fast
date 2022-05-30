<template>
  <div>
    <createCampaign v-if="tab == 'createCampaign'" />
    <campaignList />
  </div>
</template>
<script>
import campaignList from "~/components/campaign/campaignList.vue";
import createCampaign from "~/components/campaign/createCampaign.vue";

export default({
  middleware: "auth",
  data(){
    return{
      tab:''
    }
  },
  components: { campaignList, createCampaign },
  created() {
    this.$store.commit('leftSidebar/setsidebarSelected', 'campaigns');
    this.tab = this.$route.params.tab
  },
})
</script>
