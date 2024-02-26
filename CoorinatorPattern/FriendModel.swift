//
//  FriendModel.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation

struct Friend : UserProtocol, Identifiable, Hashable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(email)
    }
}
