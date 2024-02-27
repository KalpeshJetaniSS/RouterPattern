//
//  UserModelModel.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation

//Model for App Screen
struct UserModel : UserProtocol {
    var firstName: String
    var lastName : String
    var email : String
}

extension UserModel {
    init(from userDetail: UserDetailProtocol) {
        self.init(firstName: userDetail.firstName, lastName: userDetail.lastName, email: userDetail.email)
    }
}


