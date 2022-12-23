//
//  profileSettings.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI

struct ProfileSettings: View {
    var body: some View {
        NavigationStack {
            Form{
                Section(header: Text("Settings")){
                    NavigationLink("My Account"){
                        profileAccount()
                    }
                    
                    Text("Payment Method")
            
                    NavigationLink("Location"){
                        MapView()
                    }
                }
                    Section(header: Text("Orders")){
                        Text("My Orders")
                    }
                    
                    Text("LogOut")
                        .foregroundColor(.red)
                        .padding()
                        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                        .cornerRadius(50)
                        .offset(x: 100)
            } .scrollContentBackground(.hidden)
        }
    }
    
    struct profileSettings_Previews: PreviewProvider {
        static var previews: some View {
            ProfileSettings()
        }
    }
}
