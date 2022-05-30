<template>
    <div class="_dashboard_main_wrap">
    <addPeople v-if="tab == 'addPeople'" />
    <peopleDetails v-else-if="tab == 'details'"/>
    <peopleList v-else />
  </div>
</template>
<script>
import addPeople from "~/components/people/addPeople.vue";
import peopleList from "~/components/people/peopleList.vue";
import peopleDetails from "~/components/people/peopleDetails.vue";

export default {
  middleware: "auth",
  data(){
    return{
      tab:''
    }
  },
 components: { addPeople, peopleList, peopleDetails },

 created(){
   this.$store.commit("leftSidebar/setsidebarSelected", 'people');
  //  console.log("waejvjwjefw rweq qwr qwer w")
   this.tab = this.$route.params.tab
  //  console.log(this.tab,"tab")
  },
}
</script>
