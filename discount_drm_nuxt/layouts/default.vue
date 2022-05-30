 <template>
  <div class="_dashboard_page" v-if="this.authUser || this.authUser.access == 1 ">
    <!-- {{authUser}} -->
    <div class="_dashboard_wrapper">
      <topBar   />
      <leftSidebar />
      <div class="_dashboard_main_wrapper" :class="getSideBarClosed?'_dashboard_main_wrapper_inactive' : '_dashboard_main_wrapper_active' ">
          <Nuxt v-if="!pricingEngineShow"  />
        <div v-else-if="pricingEngineShow">
          <ratetable></ratetable>
        </div>
      </div>
    </div>
  </div>
  <div v-else>
      <Nuxt />
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import leftSidebar from "~/components/leftSidebar.vue";
import topBar from "~/components/topBar.vue";
import ratetable from '../components/engine/ratetable.vue'

export default {
  components: { leftSidebar, topBar, ratetable },

  data() {
    return {
      pricingEngineShow: false
    };
  },
 computed: {
    ...mapGetters({
        authUser:'getAuthUser',
        getSideBarClosed: 'leftSidebar/getSideBarClosed'
      }),
  },
    mounted() {
    this.socketIo();
  },
  methods: {
    socketIo() {
      this.socket = this.$nuxtSocket({
        name: "home", // Use socket "home"
        channel: "/", // connect to '/index'
        // socket.io-client opts:
        reconnection: false,
      });

      this.socket.emit("con", this.authUser);
    },
    async logout() {
      //   this.logoutLoader = true
      const res = await this.callApi("get", `/auth/logout`);
      if (res.status == 200) {
        window.location = "/";
      }
      this.logoutLoader = false;
    },
    clickMenuDrop(tab) {
      if (tab != "messageDrop" && tab != "notiDrop" && tab != "friReqDrop") {
        this.tab = "";
      }

      var self = this;
      var self2 = this;
      setTimeout(function () {
        self.$nextTick(function () {
          self.isloaded = !self.isloaded;
        });
        self2.$nextTick(function () {
          self2.isHide = !self2.isHide;
        });
      }, 1000);

      return (this.tab = tab);
    },
  },

  created() {
   
  },
};
</script>
