<template>
   <div class="_campaign_popup_wrapper">
        <div class="_campaign_popup_wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 mx-auto">
                        <div class="_campaign_popup_inner">
                            <h4 class="_campaign_popup_inner_title">Create a new campaign</h4>
                            <form class="_campaign_popup_inner_popup">
                                <p class="_campaign_popup_inner_popup_label">CAMPAIGN NAME</p>
                                <input type="text" placeholder="Campaign name" class="_popup_input">
                            </form>
                            <div class="_campaign_popup_type">
                                <h4 class="_campaign_popup_type_title">CAMPAIGN TYPE</h4>
                                <div class="_campaign_popup_type_info">
                                    <div class="_campaign_popup_type_info_icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 20 20">
                                            <circle cx="10" cy="10" r="10" fill="#0051F9"/>
                                            <circle cx="10" cy="10" r="10" fill="#0051F9"/>
                                            <g>
                                              <circle cx="10" cy="10" r="5" fill="#0051F9"/>
                                              <circle cx="10" cy="10" r="5" fill="#fff"/>
                                            </g>
                                        </svg>
                                    </div>
                                    <div class="_campaign_popup_type_text">
                                        <p class="_campaign_popup_type_para">Day based</p>
                                        <p class="_campaign_popup_type_para1">Will fire events in consecutive days counting from the date prospect joined campaign
                                        </p>
                                    </div>
                                </div>
                                <hr class="_border2">
                            </div>
                            <div class="_campaign_popup_btn_grp">
                                <div class="_campaign_popup_btn">
                                    <button type="submit" @click="$router.push(`/campaigns`)" class="_campaign_popup_btn_link">Cancel</button>
                                </div>
                                <div class="_campaign_popup_btn">
                                    <button type="submit" class="_campaign_popup_btn_link">Create</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {

}
</script>
