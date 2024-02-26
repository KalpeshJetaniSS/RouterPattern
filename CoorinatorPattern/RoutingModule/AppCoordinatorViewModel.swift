//
//  AppViewModel.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation

// ViewModel for the entire app
class AppCoordinatorViewModel: ObservableObject {

    @Published var coordinator : Coordinator
    @Published var loginViewModel : LoginViewModel
    
    init(coordinator: Coordinator = Coordinator()) {
        self.coordinator = coordinator
        self.loginViewModel = LoginViewModel(coordinator: coordinator)
    }
}
