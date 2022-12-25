
//  Payment.swift
//  orderingPage


import SwiftUI

struct Payment: View {
    @State private var showingMasterCard = false
    @State private var showingVisa = false
    @State private var showingMada = false
    @State private var showingSuccessfull = false
    @EnvironmentObject  var order : Order
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Text("Total")
                        .offset(x: -130)
                    Text("\(order.calculateTotalPrice())")
                    // Change total price
                        .offset(x: 130)
                }
                Divider()
                    .padding()
                Text("Payment method")
                    .font(.headline)
                    .fontWeight(.bold)
                    .offset(x: -130)
                HStack{
                    Button(action: {
                        showingMasterCard.toggle()
                    }) {
                        Image("MasterCard")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .sheet(isPresented: $showingMasterCard) {
                        CardsPayment()
                    }
                    
                    Button(action:{
                        showingVisa.toggle()
                    }) {
                        Image("Visa")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .sheet(isPresented: $showingVisa) {
                        Visa()
                    }
                    
                    Button(action:{
                        showingMada.toggle()
                    }) {
                        Image("Mada")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(y: 20)
                            .padding()
                    }
                    .sheet(isPresented: $showingMada) {
                        Mada()
                    }
                    
                    Button(action:{
                        showingSuccessfull.toggle()
                    }) {
                        Image("Cash")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(y: 17)
                            .padding()
                    }
                    .fullScreenCover(isPresented: $showingSuccessfull) {
                        Successfull()
                    }
                }
                .padding(.bottom)
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.778, green: 0.816, blue: 0.861))
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(false)
        // - Nav, Go to Menu page
    }
    
    struct Payment_Previews: PreviewProvider {
        static var previews: some View {
            Payment()
                .environmentObject(Order())
        }
    }
}
