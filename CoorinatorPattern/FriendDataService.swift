//
//  FriendDataService.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation




class FriendDataService {
    
    func getFriendsList(user: UserProtocol) async -> [Friend] {
        try? await Task.sleep(for: .seconds(1))
        return FriendDataService.userDB.filter { friend in friend.lastName != user.lastName }.map { user in
            Friend(id: UUID(), firstName: user.firstName, lastName: user.lastName, email: user.email)
        }
    }
}

extension FriendDataService{
    
    static var userDB : [UserModel]  {
        return [UserModel(firstName: "akash", lastName: "nara", email: "akash@gmail.com"),
         UserModel(firstName: "kunal", lastName: "", email: "kunal@gmail.com"),
         UserModel(firstName: "karan", lastName: "jasvani", email: "kiran@gmail.com"),
         UserModel(firstName: "sandip", lastName: "jetani", email: "ss@gmail.com"),
         UserModel(firstName: "mayur", lastName: "usdad", email: "mayur@gmail.com"),
         UserModel(firstName: "rajesh", lastName: "viradiya", email: "rajesh@gmail.com"),
         UserModel(firstName: "akul", lastName: "vora", email: "akulvora@gmail.com")]
    }
}
