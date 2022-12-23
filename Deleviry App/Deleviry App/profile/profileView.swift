//
//  SwiftUIView.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI
import PhotosUI

struct profileView: View {
    @State private var profilImage = UIImage(named: "profilePerson")
    @State private var showPhotoPickerSheet = false
    var body: some View {
        NavigationView{
           
            
            VStack{
                Text("Welcome!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 1.031, green: 0.837, blue: 0.772))
                    
                ProfileSettings()
                    .offset(y: 145)
                    .ignoresSafeArea(edges: .bottom)
                    .padding(.bottom)
               
                Image(uiImage: profilImage!).prifileImageStyle()
                    .padding(.bottom)
                    .offset(y: -500)
                    .onTapGesture {
                        showPhotoPickerSheet = true
                        print("hi")
                    }
            }.padding()
             .sheet(isPresented: $showPhotoPickerSheet) {
                 ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profilImage)
             }
            ZStack {
                Image("plate&fork")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.1)
                           }
        }
    }
        
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            profileView()
        }
    }
}
