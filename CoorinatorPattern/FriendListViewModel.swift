//
//  FriendListViewModel.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation

// ViewModel for Friend
class FriendListViewModel: ObservableObject {
    @Published var list : [Friend] = []
    
    let service : FriendDataService = FriendDataService()
    
    func loadFriendList(user: UserProtocol) async {
        Task{
            let nList = await service.getFriendsList(user: user)
            DispatchQueue.main.async {
                self.list = nList
            }
        }
    }
}
