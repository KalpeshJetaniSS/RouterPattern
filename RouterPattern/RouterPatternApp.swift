//
//  RouterPatternApp.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import SwiftUI

//@main
//struct RouterPatternApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

// Entry point of the app
@main
struct MyApp: App {
    @StateObject var appRouter = AppRouterViewModel()

    var body: some Scene {
        WindowGroup {
            AppRouterView()
                .environmentObject(appRouter.router)
                .environmentObject(appRouter.loginViewModel)
        }
    }
}
