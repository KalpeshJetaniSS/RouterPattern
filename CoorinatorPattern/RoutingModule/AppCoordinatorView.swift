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
struct AppCoordinatorView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var loginViewModel : LoginViewModel
    
    var body: some View {
        ZStack{
            switch coordinator.currentScreen{
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



