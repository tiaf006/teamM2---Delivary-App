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
   // @State private var showingSheetAccount = false
    /*
    .onTapGesture {
        showPhotoPickerSheet = true
        print("hi")
    }
}.padding()
.sheet(isPresented: $showPhotoPickerSheet) {
 ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profilImage)
}*/
    var body: some View {
        NavigationStack {
          //  Form{
                    /*NavigationLink("My Account"){
                        profileAccount()
                    }
                    .foregroundColor(.white)
                    .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                    .padding()
                   */
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
            /*Button("My Account"){
                        
                    }.foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                        .cornerRadius(50)
                        .offset(y: -100)*/
                    
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
           // }
                       // .scrollContentBackground(.hidden)
        }
    }
    
    struct profileSettings_Previews: PreviewProvider {
        static var previews: some View {
            ProfileSettings()
        }
    }
}
