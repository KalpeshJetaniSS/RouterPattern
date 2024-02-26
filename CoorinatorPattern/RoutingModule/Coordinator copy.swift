//
//  Coordinator.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation
import SwiftUI

class Coordinator: ObservableObject {
    
    init() {
        self.currentScreen = .login // Set initial screen
    }
    
    // Enum to represent different screens
    enum Screen : Hashable{
        
        case login, friendList(UserProtocol), userProfile(UserProtocol), settings
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
        
        static func == (lhs: Coordinator.Screen, rhs: Coordinator.Screen) -> Bool {
            return lhs.description == rhs.description
        }
        func hash(into hasher: inout Hasher) {
            hasher.combine(self.description)
        }
    }
    
    @Published var currentScreen: Screen{
        didSet{
            if (oldValue != currentScreen){
                switch currentScreen{
                case .login:
                    goToLoginScreen()
                    break
                case .friendList(let user):
                    goToFriendList(user)
                    break
                case .userProfile(let user):
                    goToProfile(user)
                    break
                case .settings:
                    goToSettings()
                    break
                }
            }
        }
    }
}

extension Coordinator {
    private func goToLoginScreen() {
        print("goToLoginScreen")
    }
    
    private func goToFriendList(_ user : UserProtocol) {
        print("goToFriendList")
    }
    
    private func goToProfile(_ user : UserProtocol) {
        print("goToProfile")
    }
    
    private func goToSettings() {
        print("goToSettings")
    }
}
