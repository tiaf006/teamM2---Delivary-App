
//  CardsPayment.swift
//  orderingPage


import SwiftUI

struct CardsPayment: View {
    @State private var cardNumber: String = ""
    @State private var expirationDate: String = ""
    @State private var securityCode: String = ""
    @State private var nameOnCard: String = ""
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            Image("MasterCard")
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
                showingSheet.toggle()
            } label: {
                Text("Pay")
                    .frame(width: 300 , height: 50, alignment: .center)
            }
            .fullScreenCover(isPresented: $showingSheet) {
                Successfull()
            }
            
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(50)
        }
    }
}

struct CardsPayment_Previews: PreviewProvider {
    static var previews: some View {
        CardsPayment()
    }
}
