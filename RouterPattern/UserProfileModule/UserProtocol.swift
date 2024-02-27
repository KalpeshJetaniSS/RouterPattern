//
//  UserProtocol.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation

protocol UserProtocol {
    var firstName: String {get set}
    var lastName : String {get set}
    var email : String {get set}
}

protocol UserDetailProtocol : UserProtocol{ }

