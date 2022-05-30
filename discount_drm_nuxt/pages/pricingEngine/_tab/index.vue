<template>
  <div>
    <h1>from engine</h1>
    <!-- <webhooks v-if="tab == 'webhooks'" /> -->
    <!-- <hotline /> -->
  </div>
</template>
<script>
// import hotline from "../../components/engine/hotline.vue";
// import webhooks from "../../components/engine/webhooks.vue";

export default({
  middleware: "auth",
  data(){
    return{
      tab:''
    };
  },
  // components: { hotline, webhooks },
  created() {
    this.tab = this.$route.params.tab
  },
})
</script>
