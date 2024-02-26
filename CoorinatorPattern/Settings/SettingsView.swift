//
//  SettingsView.swift
//  CoorinatorPattern
//
//  Created by Kalpesh on 26/02/24.
//

import Foundation
import SwiftUI

struct SettingsView : View{
    @EnvironmentObject var coordinator : Coordinator
    var body: some View{
        VStack{
            Text("Settings Screen")
            Button("Go Back"){
                coordinator.goToLoginScreen()
            }
        }
    }
}
