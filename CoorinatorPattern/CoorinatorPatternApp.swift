//
//  CoorinatorPatternApp.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import SwiftUI

//@main
//struct CoorinatorPatternApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

// Entry point of the app
@main
struct MyApp: App {
    @StateObject var appCoordinator = AppCoordinatorViewModel()

    var body: some Scene {
        WindowGroup {
            AppCoordinatorView()
                .environmentObject(appCoordinator.coordinator)
                .environmentObject(appCoordinator.loginViewModel)
        }
    }
}
