//
//  LoginViewModel.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import Combine

protocol UserDataHandlerProtocol:AnyObject {
    func processUserData(user: UserProtocol?)
}

// ViewModel for App
class LoginViewModel: ObservableObject, UserDataHandlerProtocol {
    
    weak var router : Router?
    private var dataService : UserDataService?
    
    init(router: Router) {
        self.router = router
        dataService = UserDataService(delegate: self)
    }
    
    func loginWithUserName(userName : String, password: String){
        dataService?.loginWithUserName(userName: userName, password: password)
    }
    
    func processUserData(user: UserProtocol?){
        if let user = user{
            router?.goToFriendList(user)
        }else {
            fatalError("invalid user...")
        }
    }
}
