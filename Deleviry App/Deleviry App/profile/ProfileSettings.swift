//
//  profileSettings.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI

struct ProfileSettings: View {
    @State private var showingSheetAccount = false
    @State private var showingSheetMap = false
    
    var body: some View {
        NavigationStack {
            Button("My Account",action: {
                showingSheetAccount.toggle()
                showingSheetAccount = true
                    }).foregroundColor(.white)
                .padding()
                .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                .cornerRadius(50)
                .offset(y: -100)
                    .sheet(isPresented: $showingSheetAccount) {
                        profileAccount()
                        
                    }
            Button("Locations",action: {
                showingSheetMap.toggle()
                showingSheetMap = true
                    }).foregroundColor(.white)
                .padding()
                .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                .cornerRadius(50)
                .offset(y: -80)
                    .sheet(isPresented: $showingSheetMap) {
                        MapView()
                    }
                    // Text("Payment Method")
            Button("My Orders",action: {
                
                    }).foregroundColor(.white)
                .padding()
                .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                .cornerRadius(50)
                .offset(y: -60)
                   

            Button("LogOut"){}
                        .foregroundColor(.red)
                        .padding()
                        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                        .cornerRadius(50)
                        .offset(y: 80)
        }.background(.clear)
    }
    
    struct profileSettings_Previews: PreviewProvider {
        static var previews: some View {
            ProfileSettings()
        }
    }
}
