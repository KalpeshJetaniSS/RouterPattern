//
//  FriendListView.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 23/02/24.
//

import Foundation
import SwiftUI

// Friend screen
//struct FriendView: View {
//    @EnvironmentObject var viewModel: FriendListViewModel
//    @EnvironmentObject var router: Router
//
//    var body: some View {
//        VStack {
//            Text("Friend Screen")
//            Button("Logout") {
//                // Perform logout logic here
//                router.currentScreen = .login
//            }
//        }
//    }
//}

// Main view displaying the current screen
struct FriendListView: View {
    let user : UserProtocol
    @EnvironmentObject var router: Router
    @StateObject var viewModel : FriendListViewModel
    
    var body: some View {
        VStack{
            NavigationStack{
                List {
                    ForEach(viewModel.list){ friend in //Hashable & Identifiable
                        HStack(alignment: .center, content: {
                            NavigationLink(
                                "\(friend.firstName) \(friend.lastName)",
                                value: friend)
                        })
                    }
                }.navigationDestination(for: Friend.self, destination: { friend in
                    ProfileView(user: friend)
                })
            }
            .padding()
        }.onAppear{
            Task{
                await viewModel.loadFriendList(user: user)
            }
        }
    }
}

struct FriendListView_PreviewProvider : PreviewProvider {
    static var previews: some View{
        FriendListView(user: UserModel(firstName: "", lastName: "jetani", email: ""), viewModel: FriendListViewModel())
    }
}
