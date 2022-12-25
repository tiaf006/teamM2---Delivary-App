//
//  Visa.swift
//  Deleviry App
//
//  Created by Eman on 01/06/1444 AH.
//

import SwiftUI

struct Visa: View {
    @State private var cardNumber: String = ""
    @State private var expirationDate: String = ""
    @State private var securityCode: String = ""
    @State private var nameOnCard: String = ""
    @State private var showingSheet = false
    @State var showAlert = false
    
    var body: some View {
        VStack{
            Image("Visa")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            Text("Card number")
                .fontWeight(.bold)
                .offset(x: -140)
            TextField("0000 0000 0000 0000", text: $cardNumber)
                .padding()
            HStack{
                VStack{
                    Text("Expiration date")
                        .fontWeight(.bold)
                        .offset(x: -30)
                    TextField("00/0000", text: $expirationDate)
                        .padding()
                }
                VStack{
                    Text("Security Code")
                        .fontWeight(.bold)
                        .offset(x: -40)
                    TextField("000", text: $securityCode)
                        .padding()
                }
            }
            Text("Name on card")
                .fontWeight(.bold)
                .offset(x: -140)
            TextField("Name on card", text: $nameOnCard)
                .padding()
            
            Button { // Pay button
                if !cardNumber.isEmpty || !expirationDate.isEmpty || !securityCode.isEmpty || !nameOnCard.isEmpty{
                    showingSheet.toggle()
                }else{
                    showAlert = true
                }
            } label: {
                Text("Pay")
                    .frame(width: 300 , height: 50, alignment: .center)
            }
            .fullScreenCover(isPresented: $showingSheet) {
                Successfull()
            }
            .alert("Please fill card information", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
            
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(50)
        }
    }
}

struct Visa_Previews: PreviewProvider {
    static var previews: some View {
        Visa()
    }
}
