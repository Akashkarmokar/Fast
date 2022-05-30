<template>
     <div class="_dashboard_main_wrap">
         <div class="_dashboard_main_wrap_inner">
            <div class="_dashboard_main_top">
                <div class="_dashboard_main_top_btn">
                <ul>
                    <li>
                    <nuxt-link to="/" class="_dashboard_main_btn_link" :class="
                                        isActive == 0
                                        ? '_dashboard_main_btn_link_active'
                                        : ''
                                    ">Dashboard</nuxt-link>
                    </li>
                    <li>
                    <nuxt-link to="/rankings" class="_dashboard_main_btn_link" :class="
                                        isActive == 1
                                        ? '_dashboard_main_btn_link_active'
                                        : ''
                                    ">Rankings</nuxt-link>
                    </li>
                    <!-- <li> -->
                    <!-- <nuxt-link to="/marketing" class="_dashboard_main_btn_link" :class="
                                        isActive == 2
                                        ? '_dashboard_main_btn_link_active'
                                        : ''
                                    ">Marketing</nuxt-link>
                    </li> -->
                </ul>
                </div>
                <div class="_dashboard_main_top_inner">
                <div class="_dashboard_main_top_select _mar_lr">
                    <select
                    class="form-select _top_select"
                    aria-label="Default select example"
                    >
                    <option value="{1}">Today</option>
                    <option value="{2}">Yesterday</option>
                    <option value="{3}">Tomorrow</option>
                    </select>
                </div>
                <div class="_dashboard_main_top_btn _mar_lr">
                    <button type="submit" class="_dashboard_main_top_btn_link">
                    Run Numbers
                    </button>
                </div>
                <div class="_dashboard_main_top_value">
                    <div class="_dashboard_main_top_value_volume">
                    <p class="_dashboard_main_top_para">Units</p>
                    </div>
                    <div class="_dashboard_main_top_value_volume">
                    <label class="switch">
                        <input type="checkbox" defaultChecked />
                        <span class="slider round" />
                    </label>
                    </div>
                    <div class="_dashboard_main_top_value_volume">
                    <p class="_dashboard_main_top_para">Volume</p>
                    </div>
                </div>
                </div>
            </div>
            <div class="_dashboard_main_middle_wrap">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="_agent_ranking_table">
                            <div class="_agent_ranking_table_header">
                                <div class="_agent_ranking_titl">
                                    <h4>Agent</h4>
                                </div>
                                <div class="_agent_ranking_titl">
                                    <h4>Lead Source</h4>
                                </div>
                                <div class="_agent_ranking_titl">
                                    <h4>Leads</h4>
                                </div>
                                <div class="_agent_ranking_titl">
                                    <h4>Closings</h4>
                                </div>
                            </div>
                            <div class="_agent_ranking_table_data">
                                <div class="_agent_ranking_table_data1">
                                    <p>1</p>
                                </div>
                                <div class="_agent_ranking_table_data1">
                                    <h4>Constance Kelley</h4>
                                </div>
                                <div class="_agent_ranking_table_data1">
                                    <h4>Marathon Realty</h4>
                                </div>
                                <div class="_agent_ranking_table_data1">
                                    <h4>100</h4>
                                </div>
                                 <div class="_agent_ranking_table_data1">
                                    <h4>50</h4>
                                </div>
                            </div>
                            <hr class="_agent_border">
                        </div>
                    </div>
                </div>
            </div>
          </div>
     </div>
</template>
<script>
export default {
  middleware: "auth",
  data() {
    return {
      isActive: 1,
    };
  },

  methods: {},

  created() {
    // this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
  },
  beforeCreate() {},
};
</script>
