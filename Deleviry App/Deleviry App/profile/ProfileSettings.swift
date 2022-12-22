//
//  profileSettings.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI

struct ProfileSettings: View {
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Settings")){
                    Text("My Account")
                    Text("Payment Method")
                    Text("Location")
                }
                Section(header: Text("Orders")){
                    Text("My Orders")
                }
                Text("LogOut")
                    .foregroundColor(.red)
            }
        }
    }
}

struct profileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
