<template>
  <div
    class="_dashboard_left_sidebar"
    :class="
      getSideBarClosed
        ? '_dashboard_left_sidebar_inactive '
        : '_dashboard_left_sidebar_active'
    "
  >
    <div class="_dashboard_left_sidebar_toggle_wrap">
      <button
        class="_dashboard_left_sidebar_toggle_btn"
        @click="closeSideBar()"
        :class="getSideBarClosed ? ' _dashboard_left_sidebar_toggle_btn' : ''"
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="6"
          height="10"
          fill="none"
          viewBox="0 0 6 10"
        >
          <path
            stroke="#6B7280"
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M4.75 9.084L.667 5 4.75.917"
          />
        </svg>
      </button>
    </div>
    <div class="_dashboard_left_sidebar_inner">
      <div class="_dashboard_leftbar_top">
        <div class="_dashboard_left_sidebar_logo_wrap">
        <nuxt-link to="/">
          <img
            v-if="getSideBarClosed"
            src="../assets/images/f-icon.svg"
            class="
              _dashboard_left_sidebar_logo_img
              _dashboard_left_sidebar_close_logo_img
            "
            alt="logo"
          />
          <img
            v-else
            src="../assets/images/fast-logo.png"
            class="_dashboard_left_sidebar_logo_img"
            alt="logo"
          />
        </nuxt-link>
      </div>
         <div class="_dashboard_left_sidebar_nav_wrap">
        <ul class="_dashboard_left_sidebar_nav_list">
          <li
            :class="
              sidebarSelected == 'index'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-width="1.3"
                    d="M11.983 16.35v-5.147a2.15 2.15 0 00-2.15-2.15H8.167a2.15 2.15 0 00-2.15 2.15v5.147H3.5a.85.85 0 01-.85-.85V8.765a.85.85 0 01.293-.642l5.5-4.778a.85.85 0 011.114 0l5.5 4.778a.85.85 0 01.293.642V15.5c0 .47-.38.85-.85.85h-2.517zm-4.666 0v-5.147c0-.47.38-.85.85-.85h1.666c.47 0 .85.38.85.85v5.147H7.317z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">
                Dashboard
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-width="1.3"
                    d="M11.983 16.35v-5.147a2.15 2.15 0 00-2.15-2.15H8.167a2.15 2.15 0 00-2.15 2.15v5.147H3.5a.85.85 0 01-.85-.85V8.765a.85.85 0 01.293-.642l5.5-4.778a.85.85 0 011.114 0l5.5 4.778a.85.85 0 01.293.642V15.5c0 .47-.38.85-.85.85h-2.517zm-4.666 0v-5.147c0-.47.38-.85.85-.85h1.666c.47 0 .85.38.85.85v5.147H7.317z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <!-- v-if="authUser && authUser.user_type == 'CLIENT
          '"  -->
          <li
           v-if="authUser && (authUser.user_type == 'ADMIN' || authUser.user_type == 'AGENT')"

            :class="
              sidebarSelected == 'people'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/people">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M12.75 15h3.75v-1.5a2.25 2.25 0 00-4.017-1.393L12.75 15zm0 0h-7.5 7.5zm0 0v-1.5c0-.492-.095-.962-.267-1.393L12.75 15zm-7.5 0H1.5v-1.5a2.25 2.25 0 014.017-1.393L5.25 15zm0 0v-1.5c0-.492.095-.962.267-1.393L5.25 15zm.267-2.893a3.752 3.752 0 016.966 0H5.517zM11.25 5.25a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0v0zm4.5 2.25a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zm-10.5 0a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> People </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/people">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M12.75 15h3.75v-1.5a2.25 2.25 0 00-4.017-1.393L12.75 15zm0 0h-7.5 7.5zm0 0v-1.5c0-.492-.095-.962-.267-1.393L12.75 15zm-7.5 0H1.5v-1.5a2.25 2.25 0 014.017-1.393L5.25 15zm0 0v-1.5c0-.492.095-.962.267-1.393L5.25 15zm.267-2.893a3.752 3.752 0 016.966 0H5.517zM11.25 5.25a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0v0zm4.5 2.25a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zm-10.5 0a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <li
           v-if="authUser && authUser.user_type == 'AGENT'"
            :class="
              sidebarSelected == 'calculator'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/calculator">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg width="20" height="20" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5 2C9.46243 2 7 4.46243 7 7.5V40.5C7 43.5376 9.46244 46 12.5 46H34.5C37.5376 46 40 43.5376 40 40.5V7.5C40 4.46243 37.5376 2 34.5 2H12.5ZM15.25 7.5C13.7312 7.5 12.5 8.73122 12.5 10.25C12.5 11.7688 13.7312 13 15.25 13H31.75C33.2688 13 34.5 11.7688 34.5 10.25C34.5 8.73122 33.2688 7.5 31.75 7.5H15.25ZM31.75 26.75C33.2688 26.75 34.5 27.9812 34.5 29.5V37.75C34.5 39.2688 33.2688 40.5 31.75 40.5C30.2312 40.5 29 39.2688 29 37.75V29.5C29 27.9812 30.2312 26.75 31.75 26.75ZM23.5 35C21.9812 35 20.75 36.2312 20.75 37.75C20.75 39.2688 21.9812 40.5 23.5 40.5H23.5275C25.0463 40.5 26.2775 39.2688 26.2775 37.75C26.2775 36.2312 25.0463 35 23.5275 35H23.5ZM12.5 37.75C12.5 36.2312 13.7312 35 15.25 35H15.2775C16.7963 35 18.0275 36.2312 18.0275 37.75C18.0275 39.2688 16.7963 40.5 15.2775 40.5H15.25C13.7312 40.5 12.5 39.2688 12.5 37.75ZM15.25 26.75C13.7312 26.75 12.5 27.9812 12.5 29.5C12.5 31.0188 13.7312 32.25 15.25 32.25H15.2775C16.7963 32.25 18.0275 31.0188 18.0275 29.5C18.0275 27.9812 16.7963 26.75 15.2775 26.75H15.25ZM20.75 29.5C20.75 27.9812 21.9812 26.75 23.5 26.75H23.5275C25.0463 26.75 26.2775 27.9812 26.2775 29.5C26.2775 31.0188 25.0463 32.25 23.5275 32.25H23.5C21.9812 32.25 20.75 31.0188 20.75 29.5ZM31.75 18.5C30.2312 18.5 29 19.7312 29 21.25C29 22.7688 30.2312 24 31.75 24H31.7775C33.2963 24 34.5275 22.7688 34.5275 21.25C34.5275 19.7312 33.2963 18.5 31.7775 18.5H31.75ZM20.75 21.25C20.75 19.7312 21.9812 18.5 23.5 18.5H23.5275C25.0463 18.5 26.2775 19.7312 26.2775 21.25C26.2775 22.7688 25.0463 24 23.5275 24H23.5C21.9812 24 20.75 22.7688 20.75 21.25ZM15.25 18.5C13.7312 18.5 12.5 19.7312 12.5 21.25C12.5 22.7688 13.7312 24 15.25 24H15.2775C16.7963 24 18.0275 22.7688 18.0275 21.25C18.0275 19.7312 16.7963 18.5 15.2775 18.5H15.25Z" fill="#CCCCCC"/>
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> Calculator </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/calculator">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                  <svg width="20" height="20" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5 2C9.46243 2 7 4.46243 7 7.5V40.5C7 43.5376 9.46244 46 12.5 46H34.5C37.5376 46 40 43.5376 40 40.5V7.5C40 4.46243 37.5376 2 34.5 2H12.5ZM15.25 7.5C13.7312 7.5 12.5 8.73122 12.5 10.25C12.5 11.7688 13.7312 13 15.25 13H31.75C33.2688 13 34.5 11.7688 34.5 10.25C34.5 8.73122 33.2688 7.5 31.75 7.5H15.25ZM31.75 26.75C33.2688 26.75 34.5 27.9812 34.5 29.5V37.75C34.5 39.2688 33.2688 40.5 31.75 40.5C30.2312 40.5 29 39.2688 29 37.75V29.5C29 27.9812 30.2312 26.75 31.75 26.75ZM23.5 35C21.9812 35 20.75 36.2312 20.75 37.75C20.75 39.2688 21.9812 40.5 23.5 40.5H23.5275C25.0463 40.5 26.2775 39.2688 26.2775 37.75C26.2775 36.2312 25.0463 35 23.5275 35H23.5ZM12.5 37.75C12.5 36.2312 13.7312 35 15.25 35H15.2775C16.7963 35 18.0275 36.2312 18.0275 37.75C18.0275 39.2688 16.7963 40.5 15.2775 40.5H15.25C13.7312 40.5 12.5 39.2688 12.5 37.75ZM15.25 26.75C13.7312 26.75 12.5 27.9812 12.5 29.5C12.5 31.0188 13.7312 32.25 15.25 32.25H15.2775C16.7963 32.25 18.0275 31.0188 18.0275 29.5C18.0275 27.9812 16.7963 26.75 15.2775 26.75H15.25ZM20.75 29.5C20.75 27.9812 21.9812 26.75 23.5 26.75H23.5275C25.0463 26.75 26.2775 27.9812 26.2775 29.5C26.2775 31.0188 25.0463 32.25 23.5275 32.25H23.5C21.9812 32.25 20.75 31.0188 20.75 29.5ZM31.75 18.5C30.2312 18.5 29 19.7312 29 21.25C29 22.7688 30.2312 24 31.75 24H31.7775C33.2963 24 34.5275 22.7688 34.5275 21.25C34.5275 19.7312 33.2963 18.5 31.7775 18.5H31.75ZM20.75 21.25C20.75 19.7312 21.9812 18.5 23.5 18.5H23.5275C25.0463 18.5 26.2775 19.7312 26.2775 21.25C26.2775 22.7688 25.0463 24 23.5275 24H23.5C21.9812 24 20.75 22.7688 20.75 21.25ZM15.25 18.5C13.7312 18.5 12.5 19.7312 12.5 21.25C12.5 22.7688 13.7312 24 15.25 24H15.2775C16.7963 24 18.0275 22.7688 18.0275 21.25C18.0275 19.7312 16.7963 18.5 15.2775 18.5H15.25Z" fill="#CCCCCC"/>
                  </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <li
           v-if="authUser && authUser.user_type == 'ADMIN' "
            :class="
              sidebarSelected == 'conversation'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/conversation">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 7.5h.008H6zm3 0h.008H9zm3 0h.008H12zM6.75 12h-3a1.5 1.5 0 01-1.5-1.5v-6A1.5 1.5 0 013.75 3h10.5a1.5 1.5 0 011.5 1.5v6a1.5 1.5 0 01-1.5 1.5H10.5l-3.75 3.75V12z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">
                Conversations
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/conversation">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 7.5h.008H6zm3 0h.008H9zm3 0h.008H12zM6.75 12h-3a1.5 1.5 0 01-1.5-1.5v-6A1.5 1.5 0 013.75 3h10.5a1.5 1.5 0 011.5 1.5v6a1.5 1.5 0 01-1.5 1.5H10.5l-3.75 3.75V12z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <!-- <li
           v-if="authUser &&  authUser.user_type == 'CLIENT'"
            :class="
              sidebarSelected == 'conversation'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/conversations">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 7.5h.008H6zm3 0h.008H9zm3 0h.008H12zM6.75 12h-3a1.5 1.5 0 01-1.5-1.5v-6A1.5 1.5 0 013.75 3h10.5a1.5 1.5 0 011.5 1.5v6a1.5 1.5 0 01-1.5 1.5H10.5l-3.75 3.75V12z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">
                Conversations
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/conversations">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 7.5h.008H6zm3 0h.008H9zm3 0h.008H12zM6.75 12h-3a1.5 1.5 0 01-1.5-1.5v-6A1.5 1.5 0 013.75 3h10.5a1.5 1.5 0 011.5 1.5v6a1.5 1.5 0 01-1.5 1.5H10.5l-3.75 3.75V12z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li> -->
          <li
           v-if="authUser && authUser.user_type == 'ADMIN'"
            :class="
              sidebarSelected == 'chat'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/chat">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.69 13.06l2.56-2.56h3a1.5 1.5 0 001.5-1.5V4.5a1.5 1.5 0 00-1.5-1.5h-7.5a1.5 1.5 0 00-1.5 1.5V9a1.5 1.5 0 001.5 1.5h1.5v3l.44-.44z"
                  />
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 13.5h3l2.56 2.56.44.44v-3h1.5A1.5 1.5 0 0015 12V7.5A1.5 1.5 0 0013.5 6"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> Chat </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/chat">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.69 13.06l2.56-2.56h3a1.5 1.5 0 001.5-1.5V4.5a1.5 1.5 0 00-1.5-1.5h-7.5a1.5 1.5 0 00-1.5 1.5V9a1.5 1.5 0 001.5 1.5h1.5v3l.44-.44z"
                  />
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M6 13.5h3l2.56 2.56.44.44v-3h1.5A1.5 1.5 0 0015 12V7.5A1.5 1.5 0 0013.5 6"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <!-- <li
            :class="
              sidebarSelected == 'video'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/video">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="url(#paint0_linear_4937_15480)"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M11.25 7.5l3.415-1.707a.75.75 0 011.085.67v5.074a.75.75 0 01-1.085.67L11.25 10.5v-3zm-7.5 6h6a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5h-6A1.5 1.5 0 002.25 6v6a1.5 1.5 0 001.5 1.5z"
                  />
                  <defs>
                    <linearGradient
                      id="paint0_linear_4937_15480"
                      x1="9"
                      x2="9"
                      y1="3.087"
                      y2="13.5"
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop stop-color="#fff" />
                      <stop offset="1" stop-color="#fff" />
                    </linearGradient>
                  </defs>
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> Videos </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/video">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="url(#paint0_linear_4937_15480)"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M11.25 7.5l3.415-1.707a.75.75 0 011.085.67v5.074a.75.75 0 01-1.085.67L11.25 10.5v-3zm-7.5 6h6a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5h-6A1.5 1.5 0 002.25 6v6a1.5 1.5 0 001.5 1.5z"
                  />
                  <defs>
                    <linearGradient
                      id="paint0_linear_4937_15480"
                      x1="9"
                      x2="9"
                      y1="3.087"
                      y2="13.5"
                      gradientUnits="userSpaceOnUse"
                    >
                      <stop stop-color="#fff" />
                      <stop offset="1" stop-color="#fff" />
                    </linearGradient>
                  </defs>
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li>
          <li
            :class="
              sidebarSelected == 'campaigns'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/campaigns">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">
                Campaigns
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="/campaigns">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
          </li> -->
          <!-- <nuxt-link to="/employee"> -->
          <li  v-if="authUser && authUser.user_type == 'ADMIN'" :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item">
            <nuxt-link v-if="!getSideBarClosed" to="" >
              <span class="d-flex align-items-center" @click="expandMenuItems.expandMenuItem1 = !expandMenuItems.expandMenuItem1" >
                <span class="_dashboard_left_sidebar_nav_item_ic">
                  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                </span>
                <span class="_dashboard_left_sidebar_nav_item_txt"> Users Management </span>
                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6" class="_left_drop"><path fill="#fff" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path></svg>
              </span>
            </nuxt-link>
            <nuxt-link v-else @click="expandMenuItems.expandMenuItem1 = !expandMenuItems.expandMenuItem1" to="" >
              <span class="d-flex align-items-center" @click="expandMenuItems.expandMenuItem1 = !expandMenuItems.expandMenuItem1">
                <span class="_dashboard_left_sidebar_nav_item_ic">
                  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                </span>
                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6" class="_left_drop1"><path fill="#fff" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path>
                </svg>
              </span>
            </nuxt-link>
            <ul v-if="expandMenuItems.expandMenuItem1" class="_left_sidebar_ul2">
                <li
            :class="
              sidebarSelected == 'employee'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1"
          >
            <nuxt-link v-if="!getSideBarClosed" to="/employee" >
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <mask
                    id="a"
                    width="18"
                    height="18"
                    x="0"
                    y="0"
                    maskUnits="userSpaceOnUse"
                    style="mask-type: alpha"
                  >
                    <path
                      fill="#000"
                      d="M9 1.5a7.5 7.5 0 00-5.513 12.57 7.499 7.499 0 0011.025 0A7.5 7.5 0 009 1.5zM9 15a6 6 0 01-4.163-1.688 4.5 4.5 0 018.325 0A6 6 0 019 15zM7.5 7.5a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6.682 4.5a6 6 0 00-2.932-2.535 3 3 0 10-4.5 0A6 6 0 003.817 12 5.94 5.94 0 013 9a6 6 0 0112 0 5.94 5.94 0 01-.818 3z"
                    />
                  </mask>
                  <g mask="url(#a)">
                    <path fill="#fff" d="M-20.25-29.25H48v70.5h-68.25z" />
                  </g>
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> Users </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else  to="/employee" >
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <mask
                    id="a"
                    width="18"
                    height="18"
                    x="0"
                    y="0"
                    maskUnits="userSpaceOnUse"
                    style="mask-type: alpha"
                  >
                    <path
                      fill="#000"
                      d="M9 1.5a7.5 7.5 0 00-5.513 12.57 7.499 7.499 0 0011.025 0A7.5 7.5 0 009 1.5zM9 15a6 6 0 01-4.163-1.688 4.5 4.5 0 018.325 0A6 6 0 019 15zM7.5 7.5a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6.682 4.5a6 6 0 00-2.932-2.535 3 3 0 10-4.5 0A6 6 0 003.817 12 5.94 5.94 0 013 9a6 6 0 0112 0 5.94 5.94 0 01-.818 3z"
                    />
                  </mask>
                  <g mask="url(#a)">
                    <path fill="#fff" d="M-20.25-29.25H48v70.5h-68.25z" />
                  </g>
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
                </li>
              <!-- </nuxt-link> -->
              <li
                :class="
                  sidebarSelected == 'agent'
                    ? '_dashboard_left_sidebar_nav_item_active'
                    : ''
                "
                :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
                class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1"
              >
                <nuxt-link v-if="!getSideBarClosed" to="/agent">
                  <span class="_dashboard_left_sidebar_nav_item_ic">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                  </span>
                  <span class="_dashboard_left_sidebar_nav_item_txt"> Agent </span>
                  <span class="_dashboard_left_sidebar_nav_item_hover"></span>
                </nuxt-link>
                <nuxt-link v-else to="/agent">
                  <span class="_dashboard_left_sidebar_nav_item_ic">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                  </span>
                  <span class="_dashboard_left_sidebar_nav_item_hover"></span>
                </nuxt-link>
              </li>
            </ul>
          </li>
           <li  v-if="authUser && authUser.user_type == 'ADMIN'" :class="
              sidebarSelected == 'marketing'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item"
          >
            <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="d-flex align-items-center w-100" @click="expandMenuItems.expandMenuItem2 = !expandMenuItems.expandMenuItem2">
                <span class="_dashboard_left_sidebar_nav_item_ic">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="18"
                    height="18"
                    fill="none"
                    viewBox="0 0 18 18"
                  >
                    <path
                      stroke="#fff"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                    />
                  </svg>
                </span>
                <span class="_dashboard_left_sidebar_nav_item_txt"> Marketing </span>
                <svg class="_left_drop" xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6"><path fill="#fff" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path></svg>
                <span class="_dashboard_left_sidebar_nav_item_hover"></span>
              </span>
            </nuxt-link>
            <nuxt-link v-else to="" @click="expandMenuItems.expandMenuItem2 = !expandMenuItems.expandMenuItem2">
              <span class="d-flex align-items-center w-100" @click="expandMenuItems.expandMenuItem2 = !expandMenuItems.expandMenuItem2">
                <span class="_dashboard_left_sidebar_nav_item_ic">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="18"
                    height="18"
                    fill="none"
                    viewBox="0 0 18 18"
                  >
                    <path
                      stroke="#fff"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                    />
                  </svg>
                </span>
                <svg class="_left_drop1" xmlns="http://www.w3.org/2000/svg" width="10" height="6" fill="none" viewBox="0 0 10 6"><path fill="#fff" d="M5 5l.354.354L5 5.707l-.354-.353L5 5zm4.354-3.646l-4 4-.708-.708 4-4 .708.708zm-4.708 4l-4-4 .708-.708 4 4-.708.708z"></path>
                </svg>
                <span class="_dashboard_left_sidebar_nav_item_hover"></span>
              </span>
            </nuxt-link>
            <ul v-if="expandMenuItems.expandMenuItem2" class="_tab_li_drop_list _left_sidebar_ul2">
              <li :class="
              sidebarSelected == 'reviews'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1">
            <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt"> Reviews </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="18"
                  height="18"
                  fill="none"
                  viewBox="0 0 18 18"
                >
                  <path
                    stroke="#fff"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M5.25 5.25h7.5m1.5 3H3.75h10.5zm0 0a1.5 1.5 0 011.5 1.5v4.5a1.5 1.5 0 01-1.5 1.5H3.75a1.5 1.5 0 01-1.5-1.5v-4.5a1.5 1.5 0 011.5-1.5h10.5zm0 0v-1.5a1.5 1.5 0 00-1.5-1.5l1.5 3zm-10.5 0v-1.5a1.5 1.5 0 011.5-1.5l-1.5 3zm1.5-3v-1.5a1.5 1.5 0 011.5-1.5h4.5a1.5 1.5 0 011.5 1.5v1.5h-7.5z"
                  />
                </svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            </li>
            <li :class="
              sidebarSelected == 'reviews'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1">
               <!--Drip Campaigns-->
             <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
               <svg fill="#fff" id="Layer_1" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1"><path d="m17 0a1 1 0 0 0 -1 1c0 2.949-2.583 4-5 4h-7a4 4 0 0 0 -4 4v2a3.979 3.979 0 0 0 1.514 3.109l3.572 7.972a3.233 3.233 0 0 0 2.953 1.919 2.982 2.982 0 0 0 2.72-4.2l-2.2-4.8h2.441c2.417 0 5 1.051 5 4a1 1 0 0 0 2 0v-18a1 1 0 0 0 -1-1zm-8.063 20.619a.983.983 0 0 1 -.898 1.381 1.232 1.232 0 0 1 -1.126-.734l-2.808-6.266h2.254zm7.063-6.019a7.723 7.723 0 0 0 -5-1.6h-7a2 2 0 0 1 -2-2v-2a2 2 0 0 1 2-2h7a7.723 7.723 0 0 0 5-1.595zm7.9.852a1 1 0 0 1 -1.342.448l-2-1a1 1 0 0 1 .894-1.79l2 1a1 1 0 0 1 .448 1.337zm-3.79-9a1 1 0 0 1 .448-1.342l2-1a1 1 0 1 1 .894 1.79l-2 1a1 1 0 0 1 -1.342-.448zm-.11 3.548a1 1 0 0 1 1-1h2a1 1 0 0 1 0 2h-2a1 1 0 0 1 -1-1z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">Drip Campaigns</span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                 <svg fill="#fff" id="Layer_1" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1"><path d="m17 0a1 1 0 0 0 -1 1c0 2.949-2.583 4-5 4h-7a4 4 0 0 0 -4 4v2a3.979 3.979 0 0 0 1.514 3.109l3.572 7.972a3.233 3.233 0 0 0 2.953 1.919 2.982 2.982 0 0 0 2.72-4.2l-2.2-4.8h2.441c2.417 0 5 1.051 5 4a1 1 0 0 0 2 0v-18a1 1 0 0 0 -1-1zm-8.063 20.619a.983.983 0 0 1 -.898 1.381 1.232 1.232 0 0 1 -1.126-.734l-2.808-6.266h2.254zm7.063-6.019a7.723 7.723 0 0 0 -5-1.6h-7a2 2 0 0 1 -2-2v-2a2 2 0 0 1 2-2h7a7.723 7.723 0 0 0 5-1.595zm7.9.852a1 1 0 0 1 -1.342.448l-2-1a1 1 0 0 1 .894-1.79l2 1a1 1 0 0 1 .448 1.337zm-3.79-9a1 1 0 0 1 .448-1.342l2-1a1 1 0 1 1 .894 1.79l-2 1a1 1 0 0 1 -1.342-.448zm-.11 3.548a1 1 0 0 1 1-1h2a1 1 0 0 1 0 2h-2a1 1 0 0 1 -1-1z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
             <!--Drip Campaigns-->
            </li>
            <li :class="
              sidebarSelected == 'reviews'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1">
            <!--Print Mrketing-->
             <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
              <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18"><g id="_01_align_center" data-name="01 align center"><path d="M24,24H3a3,3,0,0,1-3-3V0H2V21a1,1,0,0,0,1,1H24Z"/><rect x="14" y="11" width="2" height="9"/><rect x="6" y="11" width="2" height="9"/><rect x="18" y="6" width="2" height="14"/><rect x="10" y="6" width="2" height="14"/></g></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">Print Marketing</span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                 <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18"><g id="_01_align_center" data-name="01 align center"><path d="M24,24H3a3,3,0,0,1-3-3V0H2V21a1,1,0,0,0,1,1H24Z"/><rect x="14" y="11" width="2" height="9"/><rect x="6" y="11" width="2" height="9"/><rect x="18" y="6" width="2" height="14"/><rect x="10" y="6" width="2" height="14"/></g></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <!--Print Mrketing-->
            </li>
            <li :class="
              sidebarSelected == 'reviews'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1">
            <!--Digital Mrketing-->
             <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="18" height="18"><path d="M23.707,22.293,22.63,21.216,20.9,19.489,23.689,16.7a1,1,0,0,0-.365-1.646L14.355,11.8a2,2,0,0,0-2.561,2.56l3.263,8.969a1,1,0,0,0,.722.635,1.007,1.007,0,0,0,.217.023,1,1,0,0,0,.707-.293L19.489,20.9l1.727,1.727,1.077,1.077a1,1,0,0,0,1.414-1.414ZM16.4,21.165l-2.724-7.49,7.49,2.724Z"/><path d="M10,20A10,10,0,1,1,20,10a1,1,0,0,1-2,0,8,8,0,1,0-8,8,1,1,0,0,1,0,2Z"/><path d="M8.084,15.62a1,1,0,0,1-.383-.076A6,6,0,1,1,15.547,7.71a1,1,0,1,1-1.848.764A4,4,0,1,0,8.468,13.7a1,1,0,0,1-.384,1.924Z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">Digital Marketing</span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                 <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="18" height="18"><path d="M23.707,22.293,22.63,21.216,20.9,19.489,23.689,16.7a1,1,0,0,0-.365-1.646L14.355,11.8a2,2,0,0,0-2.561,2.56l3.263,8.969a1,1,0,0,0,.722.635,1.007,1.007,0,0,0,.217.023,1,1,0,0,0,.707-.293L19.489,20.9l1.727,1.727,1.077,1.077a1,1,0,0,0,1.414-1.414ZM16.4,21.165l-2.724-7.49,7.49,2.724Z"/><path d="M10,20A10,10,0,1,1,20,10a1,1,0,0,1-2,0,8,8,0,1,0-8,8,1,1,0,0,1,0,2Z"/><path d="M8.084,15.62a1,1,0,0,1-.383-.076A6,6,0,1,1,15.547,7.71a1,1,0,1,1-1.848.764A4,4,0,1,0,8.468,13.7a1,1,0,0,1-.384,1.924Z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <!--Digital Mrketing-->
            </li>
            <li :class="
              sidebarSelected == 'reviews'
                ? '_dashboard_left_sidebar_nav_item_active'
                : ''
            "
            :style="getSideBarClosed ? 'margin-left: 0; margin-right: 0;' : ''"
            class="_dashboard_left_sidebar_nav_item _dashboard_left_sidebar_nav_item1">
            <!--Merchandise-->
             <nuxt-link v-if="!getSideBarClosed" to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="18" height="18"><path d="M23.707,22.293,22.63,21.216,20.9,19.489,23.689,16.7a1,1,0,0,0-.365-1.646L14.355,11.8a2,2,0,0,0-2.561,2.56l3.263,8.969a1,1,0,0,0,.722.635,1.007,1.007,0,0,0,.217.023,1,1,0,0,0,.707-.293L19.489,20.9l1.727,1.727,1.077,1.077a1,1,0,0,0,1.414-1.414ZM16.4,21.165l-2.724-7.49,7.49,2.724Z"/><path d="M10,20A10,10,0,1,1,20,10a1,1,0,0,1-2,0,8,8,0,1,0-8,8,1,1,0,0,1,0,2Z"/><path d="M8.084,15.62a1,1,0,0,1-.383-.076A6,6,0,1,1,15.547,7.71a1,1,0,1,1-1.848.764A4,4,0,1,0,8.468,13.7a1,1,0,0,1-.384,1.924Z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_txt">Merchandise</span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <nuxt-link v-else to="">
              <span class="_dashboard_left_sidebar_nav_item_ic">
                 <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="18" height="18"><path d="M23.707,22.293,22.63,21.216,20.9,19.489,23.689,16.7a1,1,0,0,0-.365-1.646L14.355,11.8a2,2,0,0,0-2.561,2.56l3.263,8.969a1,1,0,0,0,.722.635,1.007,1.007,0,0,0,.217.023,1,1,0,0,0,.707-.293L19.489,20.9l1.727,1.727,1.077,1.077a1,1,0,0,0,1.414-1.414ZM16.4,21.165l-2.724-7.49,7.49,2.724Z"/><path d="M10,20A10,10,0,1,1,20,10a1,1,0,0,1-2,0,8,8,0,1,0-8,8,1,1,0,0,1,0,2Z"/><path d="M8.084,15.62a1,1,0,0,1-.383-.076A6,6,0,1,1,15.547,7.71a1,1,0,1,1-1.848.764A4,4,0,1,0,8.468,13.7a1,1,0,0,1-.384,1.924Z"/></svg>
              </span>
              <span class="_dashboard_left_sidebar_nav_item_hover"></span>
            </nuxt-link>
            <!--Merchandise-->
            </li>
            </ul>
          </li>
        </ul>
      </div>
      </div>
      <div v-if="authUser && authUser.user_type == 'ADMIN'" class="_dashbaord_dark_area">
      <div v-if="!getSideBarClosed" class="_dashbaord_dark_area_box">
        <div class="_dash_dark_btn">
          <button @click="dark.mode = !dark.mode" :class="(dark.mode)?'_dash_dark_btn_link_active':''" class="_dash_dark_btn_link">
            <span class="_bg_change">
              <svg v-if="dark.mode == false" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="4.389" stroke="#000" transform="rotate(-90 12 12)"/>
                <path stroke="#000" stroke-linecap="round" d="M3.444 12H1M23 12h-2.444M5.95 5.95L4.222 4.22M19.778 19.779L18.05 18.05M12 3.444V1M12 23v-2.445M18.05 5.95l1.728-1.729M4.222 19.779L5.95 18.05"/>
              </svg>
              <img class="_moon_ic" v-else src="../assets/images/moon-ic.png" alt="dd">
            </span>
            <span v-if="dark.mode == false" class="_txt_change">{{dark.lightText}} Mode</span>
            <span v-else class="_txt_change">{{dark.darkText}} Mode</span>
          </button>
        </div>
        <!-- <div class="_dashbaord_dark_area_box_btn">
          <button @click="darkModeOn = false" :class="(darkModeOn)?'':'_light_btn'" class=" _dark_btn">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
						  <circle cx="12" cy="12" r="4.389" stroke="#000" transform="rotate(-90 12 12)"/>
						  <path stroke="#000" stroke-linecap="round" d="M3.444 12H1M23 12h-2.444M5.95 5.95L4.222 4.22M19.778 19.779L18.05 18.05M12 3.444V1M12 23v-2.445M18.05 5.95l1.728-1.729M4.222 19.779L5.95 18.05"/>
					  </svg>
            <span>Light</span>
          </button>
        </div>
        <div class="_dashbaord_dark_area_box_btn">
           <button  @click="darkModeOn = true" :class="(darkModeOn)?'_light_btn':''" class="_dark_btn">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 11 16">
						  <path fill="#000" d="M2.727 14.977l.04-.498-.04.498zm-1.72-.49l.489-.11-.489.11zM3.232 1.212L3.514.8l-.282.413zM9.792 8a6.5 6.5 0 00-6.5-6.5v-1a7.5 7.5 0 017.5 7.5h-1zm-6.5 6.5a6.5 6.5 0 006.5-6.5h1a7.5 7.5 0 01-7.5 7.5v-1zm-.525-.02c.173.013.348.02.525.02v1c-.204 0-.405-.008-.605-.024l.08-.997zm-.261-1.83A6.498 6.498 0 005.792 7h1a7.498 7.498 0 01-3.791 6.52l-.495-.87zM5.792 7a6.493 6.493 0 00-2.841-5.374L3.514.8A7.493 7.493 0 016.792 7h-1zm-3.105 8.476c-.528-.042-.985-.077-1.314-.155-.316-.075-.746-.242-.854-.726l.977-.217c-.028-.124-.145-.09.106-.03.237.056.6.086 1.165.131l-.08.997zm.314-1.956c-.622.354-1.045.596-1.31.792a.967.967 0 00-.204.185c-.01.013.027-.038.009-.12l-.977.218a.836.836 0 01.144-.666c.112-.162.27-.3.433-.42.324-.24.814-.519 1.41-.858L3 13.52zM3.292 1.5a.391.391 0 00.374-.285A.382.382 0 003.514.8l-.563.826A.618.618 0 012.702.95a.609.609 0 01.59-.45v1z"/>
					  </svg>
            <span>Dark</span>
          </button>
        </div> -->
      </div>
      <div v-else class="_dashbaord_dark_area_box _dashbaord_dark_area_box_wrap">
        <div class="_dashbaord_dark_area_box_btn">
          <button  @click="darkModeOn = false" :class="(darkModeOn)?'':'_light_btn'" class="_light_btn1 _dark_btn">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
						  <circle cx="12" cy="12" r="4.389" stroke="#000" transform="rotate(-90 12 12)"/>
						  <path stroke="#000" stroke-linecap="round" d="M3.444 12H1M23 12h-2.444M5.95 5.95L4.222 4.22M19.778 19.779L18.05 18.05M12 3.444V1M12 23v-2.445M18.05 5.95l1.728-1.729M4.222 19.779L5.95 18.05"/>
					  </svg>
          </button>
        </div>
        <div class="_dashbaord_dark_area_box_btn">
           <button @click="darkModeOn = true" :class="(darkModeOn)?'_light_btn':''" class="_dark_btn _light_btn1">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 11 16">
						  <path fill="#000" d="M2.727 14.977l.04-.498-.04.498zm-1.72-.49l.489-.11-.489.11zM3.232 1.212L3.514.8l-.282.413zM9.792 8a6.5 6.5 0 00-6.5-6.5v-1a7.5 7.5 0 017.5 7.5h-1zm-6.5 6.5a6.5 6.5 0 006.5-6.5h1a7.5 7.5 0 01-7.5 7.5v-1zm-.525-.02c.173.013.348.02.525.02v1c-.204 0-.405-.008-.605-.024l.08-.997zm-.261-1.83A6.498 6.498 0 005.792 7h1a7.498 7.498 0 01-3.791 6.52l-.495-.87zM5.792 7a6.493 6.493 0 00-2.841-5.374L3.514.8A7.493 7.493 0 016.792 7h-1zm-3.105 8.476c-.528-.042-.985-.077-1.314-.155-.316-.075-.746-.242-.854-.726l.977-.217c-.028-.124-.145-.09.106-.03.237.056.6.086 1.165.131l-.08.997zm.314-1.956c-.622.354-1.045.596-1.31.792a.967.967 0 00-.204.185c-.01.013.027-.038.009-.12l-.977.218a.836.836 0 01.144-.666c.112-.162.27-.3.433-.42.324-.24.814-.519 1.41-.858L3 13.52zM3.292 1.5a.391.391 0 00.374-.285A.382.382 0 003.514.8l-.563.826A.618.618 0 012.702.95a.609.609 0 01.59-.45v1z"/>
					  </svg>
          </button>
        </div>
      </div>
      </div>
      <div v-if="authUser && authUser.user_type == 'CLIENT'" class="_client_area">
        <p class="_client_area_txt">Chris Tester</p>
        <div class="_client_log_btn" @click="logout">
          <button v-if="!getSideBarClosed" type="button" class="_client_log_btn_link">Log Out</button>
          <button v-else type="button" class="_client_log_btn_link1">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#00f" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from "vuex";

export default {
   data(){
    return{
      dark:{
        mode: false,
        darkText: 'Night',
        lightText: 'Day'
      },
      showDrop:false,
      showDrop1:false,
      darkModeOn:false,
      expandMenuItems:{
        expandMenuItem1: false,
        expandMenuItem2: false,
      }
    }

  },
  computed: {
    ...mapGetters({
      authUser:'getAuthUser',
      sidebarSelected: "leftSidebar/getsidebarSelected",
      getSideBarClosed: "leftSidebar/getSideBarClosed",
    }),
  },

  methods: {
    async logout() {
      console.log("first")
      const res = await this.callApi("get", "/auth/logout");
      if (res.status == 200) {
         this.$store.commit("loginUser", false);
         window.location = "/login";
      }
    },
    closeSideBar() {
      if (this.getSideBarClosed == false)
        this.$store.commit("leftSidebar/setSideBarClosed", true);
      else this.$store.commit("leftSidebar/setSideBarClosed", false);
    },
    menuItemClick(){
      console.log(" clicked");
    }
  },

  created() {
    this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);
  },
};
</script>
