//
//  SettingsView.swift
//  RouterPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import SwiftUI

struct SettingsView : View{
    @EnvironmentObject var router : Router
    var body: some View{
        VStack{
            Text("Settings Screen")
            Button("Go Back"){
                router.goToLoginScreen()
            }
        }
    }
}
