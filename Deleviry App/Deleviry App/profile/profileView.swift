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
                
                Image(uiImage: profilImage!).prifileImageStyle()
                    .padding(.bottom)
                    .onTapGesture {
                        showPhotoPickerSheet = true
                        print("hi")
                    }.sheet(isPresented: $showPhotoPickerSheet) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profilImage)
                    }.padding()
                
                ProfileSettings()
                    .ignoresSafeArea(edges: .bottom)
                    .frame(width: 400, alignment: .bottom)
                    .ignoresSafeArea(.container)
                    .padding(.top)
                
                
                
                
            }
            
            .background(Image("backg").opacity(0.3).frame(width: 200,height: 200))
        }
    }
        
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            profileView()
        }
    }
}
