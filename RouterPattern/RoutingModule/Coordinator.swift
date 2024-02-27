//
//  Router.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    
    // Enum to represent different screens
    enum Screen {
        case login,
             friendList(UserProtocol),
             userProfile(UserProtocol),
             settings
        
        var description: String {
            switch self{
            case .login:
                return "login"
            case .friendList:
                return "friend"
            case .userProfile:
                return "user Profile"
            case .settings:
                return "settings"
            }
        }
    }
    
    @Published private(set) var currentScreen: Screen
    
    init() {
        self.currentScreen = .login // Set initial screen
    }
    func goToLoginScreen() {
        print("goToLoginScreen")
        self.currentScreen = .login
    }
    
    func goToFriendList(_ user : UserProtocol) {
        print("goToFriendList")
        self.currentScreen = .friendList(user)
    }
    
    func goToProfile(_ user : UserProtocol) {
        print("goToProfile")
        self.currentScreen = .userProfile(user)
    }
    
    func goToSettings() {
        print("goToSettings")
        self.currentScreen = .settings
    }
    
}
