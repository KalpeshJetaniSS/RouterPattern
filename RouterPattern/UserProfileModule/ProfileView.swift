//
//  ProfileView.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import SwiftUI

struct ProfileView :View {
    @EnvironmentObject var loginViewModel : LoginViewModel
    @EnvironmentObject var router : Router
    var user : UserProtocol
    var body: some View{
        Button("Go Back") {
            //Perform Navigation Back Action
            router.goToLoginScreen()
        }
    }
}

//struct ProfileViewModel {
//    @EnvironmentObject(\.)
//    func processBack(){
//        
//    }
//}

struct ProfileView_PreviewProvider : PreviewProvider{
    
    static var previews: some View {
        ProfileView(user: FriendDataService.userDB[0])
    }
}
