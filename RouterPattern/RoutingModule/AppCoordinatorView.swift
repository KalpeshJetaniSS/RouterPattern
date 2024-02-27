//
//  ContentView.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI

// Main view displaying the current screen
struct AppRouterView: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var loginViewModel : LoginViewModel
    
    var body: some View {
        ZStack{
            switch router.currentScreen{
            case .login:
                LoginView(viewModel: loginViewModel)
            case .friendList(let user):
                FriendListView(user: user, viewModel: FriendListViewModel())
            case .userProfile(let user):
                ProfileView(user: user)
            case .settings:
                SettingsView()
            }
        }
    }
}



