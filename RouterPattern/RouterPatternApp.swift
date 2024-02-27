//
//  RouterPatternApp.swift
//  RouterPattern
//
//  Created by Kalpesh on 23/02/24.
//

import SwiftUI

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
