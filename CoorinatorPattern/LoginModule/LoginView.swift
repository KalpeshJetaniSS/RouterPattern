//
//  LoginView.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import SwiftUI

// Login screen
struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    @EnvironmentObject var coordinator: Coordinator

    @State var username : String = ""
    @State var password : String = ""
    @State var rememberMe : Bool = false
    
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Credentials")) {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                
                Section {
                    Toggle("Remember Me", isOn: $rememberMe)
                }
                
                Section {
                    Button("Log In") {
                        viewModel.loginWithUserName(userName: username, password: password)
                    }
                }
            }
        }
    }
}
