//
//  profileAccount.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 29/05/1444 AH.
//

import SwiftUI

struct profileAccount: View {
    var body: some View {
        VStack{
           
            Text("Name:")
                .padding()
                .font(.title)
                .background(Color(red: 1.031, green: 0.837, blue: 0.772))
                .foregroundColor(.white)
                .cornerRadius(50)
                .offset(x: -110, y: -200)
            
            Text("-")
                .font(.title3)
                .offset(x: -110, y: -150)
            
            Text("E-Mail:")
                .padding()
                .font(.title)
                .background(Color(red: 1.031, green: 0.837, blue: 0.772))
                .foregroundColor(.white)
                .cornerRadius(50)
                .offset(x: -110, y: -100)
            
            Text("-")
                .font(.title3)
                .offset(x: -110, y: -50)
        }.background(Image("backg").opacity(0.3).frame(width: 200,height: 200))
            
    }
        
}

struct profileAccount_Previews: PreviewProvider {
    static var previews: some View {
        profileAccount()
    }
}
