//
//  AppViewModel.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation

// ViewModel for the entire app
class AppRouterViewModel: ObservableObject {

    @Published var router : Router
    @Published var loginViewModel : LoginViewModel
    
    init(router: Router = Router()) {
        self.router = router
        self.loginViewModel = LoginViewModel(router: router)
    }
}
