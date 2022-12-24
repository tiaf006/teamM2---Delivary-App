
//  Payment.swift
//  orderingPage


import SwiftUI

struct Payment: View {
    @State private var showingSheet = false
    var body: some View {
        VStack {
            HStack{
                Text("Total")
                    .offset(x: -130)
                Text("Total Price")
                // Change total price
                    .offset(x: 130)
            }
            .padding()
            Text("Payment method")
                .font(.headline)
                .fontWeight(.bold)
                .offset(x: -130)
            HStack{
                Button(action: {
                    // Go to Cards Payment page
                    showingSheet.toggle()
                        }) {
                            Image("MasterCard")
                                .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                        }
                        .sheet(isPresented: $showingSheet) {
                                    CardsPayment()
                                }
                Button(action:{}) {
                            Image("Visa")
                                .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding()
                        }
                Button(action:{}) {
                            Image("Mada")
                                .resizable()
                                    .frame(width: 50, height: 50)
                                    .offset(y: 20)
                                    .padding()
                        }
                Button(action:{}) {
                    Image("ApplePay")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(y: 17)
                        .padding()
                }
            }
            .padding(.bottom)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
        .ignoresSafeArea()
        // - Nav, Go to Menu page
    }
    
    struct Payment_Previews: PreviewProvider {
        static var previews: some View {
            Payment()
        }
    }
}
