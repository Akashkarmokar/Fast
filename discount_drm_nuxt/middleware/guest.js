export default function ({ store, redirect, route }) {
    // If the user is not authenticated
    console.log(route.name, store.state.authUser, "on guest middleware")

    if (store.state.authUser && store.state.authUser.access == 1 ) {
      return redirect('/')
    }
  }
