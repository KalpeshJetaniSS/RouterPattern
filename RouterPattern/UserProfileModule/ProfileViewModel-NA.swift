//
//  ProfileViewModel.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import SwiftUI

class ProfileViewModel{ //NOT IN USE YET!

    var user : UserProtocol
    
    init(user: UserProtocol) {
        self.user = user
    }
    
    func fetchUserDetailsBy(firstName: String, lastName:String) async -> UserDetailModel{
        try? await Task.sleep(for: .seconds(1))
        let appUser = FriendDataService.userDB.filter { friend in friend.firstName == firstName && friend.lastName == lastName }.last!
        
        return UserDetailModel(user: appUser)
    }
}
