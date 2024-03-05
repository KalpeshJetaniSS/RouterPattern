//
//  UserDataService.swift
//  RouterPattern
//
//  Created by Kalpesh on 05/03/24.
//

import Foundation
import Combine

protocol UserDataServiceProtocol{
    func loginWithUserName(userName : String, password: String)
}

class UserDataService: UserDataServiceProtocol {
    
    private var cancellable =  Set<AnyCancellable>()
    weak var delegate : UserDataHandlerProtocol?
    init(delegate: UserDataHandlerProtocol) {
        self.delegate = delegate
    }
    
    func loginWithUserName(userName : String, password: String){
        let urlSession = URLSession(configuration: URLSessionConfiguration.ephemeral)
        let url = URL(string: "https://google.com")!
        let urlRequest = URLRequest(url: url, cachePolicy: URLRequest.CachePolicy.useProtocolCachePolicy, timeoutInterval: TimeInterval(60))
        URLSession.DataTaskPublisher(request: urlRequest, session: urlSession)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak delegate] result in
                print("Result ==> \(result)")
                delegate?.processUserData(user: FriendDataService.userDB[0])
            }, receiveValue: { [weak delegate] data in
                delegate?.processUserData(user: FriendDataService.userDB[0])
            })
            .store(in: &cancellable)
    }
}
