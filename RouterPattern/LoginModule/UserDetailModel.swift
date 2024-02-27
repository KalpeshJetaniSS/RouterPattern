//
//  UserDetailModel.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation

struct UserDetailModel : UserDetailProtocol {
    var firstName: String
    var lastName : String
    var email : String
    
    var address: String?
    var phoneNumber : String?
    
    init(firstName: String, lastName: String, email: String, address: String? = nil, phoneNumber: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.address = address
        self.phoneNumber = phoneNumber
    }
    
    init(user: UserModel) {
        self.firstName = user.firstName
        self.lastName = user.lastName
        self.email = user.email
    }
    
}

extension UserDetailProtocol {
    func toUser() -> UserModel {
        return UserModel(firstName: self.firstName, lastName: self.lastName, email: self.email)
    }
}
