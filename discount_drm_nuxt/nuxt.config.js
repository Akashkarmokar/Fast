import webpack from 'webpack'

export default {
  /*
  ** Nuxt rendering mode
  ** See https://nuxtjs.org/api/configuration-mode
  */
  mode: 'universal',
  /*
  ** Nuxt target
  ** See https://nuxtjs.org/api/configuration-target
  */
  target: 'server',
  /*
  ** Headers of the page
  ** See https://nuxtjs.org/api/configuration-head
  */
  head: {
    title: 'Fast Login Screen',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'Fast Login Screen' }
    ],
    link: [
      { rel: 'icon',
       type: 'image/x-icon',
       href: '/dot.svg'
      },
      {
        rel: 'preconnect',
        href: "https://fonts.googleapis.com"
      },
      {
        rel: 'preconnect',
        href: "https://fonts.gstatic.com"
      },
      {
        rel: 'stylesheet',
        href: "https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      },
    ],
    script: [
      { src: '/js/chart-js.min.js', type: 'text/javascript',body:true},
      { src: '/js/jquery-1.12.3.min.js' , type: 'text/javascript',body:true},
      { src: '/js/mortgage-payment-affordability-script.js', type: 'text/javascript',body:true},
      { src:"https://kjur.github.io/jsrsasign/jsrsasign-latest-all-min.js" }
    ]
  },
  /*
  ** Global CSS
  */
  css: [
    '@/assets/css/bootstrap.css',
    '@/assets/css/style.css',
    '@/assets/css/responsive.css',
  ],
  /*
  ** Plugins to load before mounting the App
  ** https://nuxtjs.org/guide/plugins
  */
  plugins: [
    '@/plugins/iview',
    // '@/plugins/design',
    {
      src: '@/plugins/design', ssr: true
    },
    {
      src: '@/plugins/vue-confetti.js', ssr: false, mode: 'client'
    },
  ],
  /*
  ** Auto import components
  ** See https://nuxtjs.org/api/configuration-components
  */
  components: true,
  /*
  ** Nuxt.js dev-modules
  */
  buildModules: [
  ],
  /*
  ** Nuxt.js modules
  */
  modules: [
    // Doc: https://axios.nuxtjs.org/usage
    '@nuxtjs/axios',
    'nuxt-socket-io'
  ],
  /*
  ** Axios module configuration
  ** See https://axios.nuxtjs.org/options
  */
  axios: {
    baseURL: "http://localhost:3333/",
    baseURL: process.env.BASE_URL,
    credentials: true
  },

  // socket.io module configuration
  io: {
    // Options
    sockets: [ // Required
      { // At least one entry is required
        name: 'home',
        url: 'http://localhost:3333',
      },
    ]
  },
  /*
  ** Build configuration
  ** See https://nuxtjs.org/api/configuration-build/
  */
  build: {
    vendor:["jquery"],
    plugins: [
      new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        'window.jQuery': 'jquery'
      })
    ]
  },
  server: {
    port: 3000, // default: 3000
    host: 'localhost' // default: localhost
  },
  publicRuntimeConfig: {
    BASE_URL: process.env.BASE_URL,
},


}
