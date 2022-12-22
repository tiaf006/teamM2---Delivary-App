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
                ZStack{
                    Image(uiImage: profilImage!).prifileImageStyle()
                        .padding()
                        .onTapGesture {
                            showPhotoPickerSheet = true
                            print("hi")
                    }
                }
                ProfileSettings()
                    .offset(y: 50)
                    .ignoresSafeArea(edges: .bottom)
                    .padding(.bottom)
            }.padding()
             .sheet(isPresented: $showPhotoPickerSheet) {
                 ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profilImage)
             }
        }.navigationTitle("Welcom!")
    }
        
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            profileView()
        }
    }
}
