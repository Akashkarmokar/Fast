export default function ({ store, redirect ,route}) {
        if ((!store.state.authUser && (route.name != 'forgetpassword' || route.name != 'resetpassword')) || (store.state.authUser && (store.state.authUser.access == 0  ) )  ) {
       return redirect('/login')
    }
  }
