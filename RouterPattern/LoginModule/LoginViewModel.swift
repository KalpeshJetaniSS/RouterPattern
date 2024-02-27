//
//  LoginViewModel.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import Combine

// ViewModel for App
class LoginViewModel: ObservableObject {
    
    weak var router : Router?
    
    private var cancellable =  Set<AnyCancellable>()
    init(router: Router) {
        self.router = router
    }
    
    func loginWithUserName(userName : String, password: String){
        let urlSession = URLSession(configuration: URLSessionConfiguration.ephemeral)
        let url = URL(string: "https://google.com")!
        let urlRequest = URLRequest(url: url, cachePolicy: URLRequest.CachePolicy.useProtocolCachePolicy, timeoutInterval: TimeInterval(60))
        URLSession.DataTaskPublisher(request: urlRequest, session: urlSession)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] result in
                print("Result ==> \(result)")
                self?.processWithUser(user: FriendDataService.userDB[0])
            }, receiveValue: { [weak self] data in
                self?.processWithUser(user: FriendDataService.userDB[0])
            })
            .store(in: &cancellable)
    }
    
    func processWithUser(user: UserProtocol?){
        if let user = user{
            router?.goToFriendList(user)
        }else {
            fatalError("invalid user...")
        }
    }
}
