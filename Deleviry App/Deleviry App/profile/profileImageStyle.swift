//
//  profileImageStyle.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//
import SwiftUI
extension Image{
    func prifileImageStyle() -> some View{
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .clipped()
            .overlay(){
                Circle().stroke(Color(.displayP3, red: 0.777, green: 0.82, blue: 0.868), lineWidth: 4)
            }
    }
}
