//
//  OrderView.swift
//  Menu
//
//  Created by maram  on 01/06/1444 AH.
//

import SwiftUI

struct OrdersView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationStack {
           
            List {
                
                HStack {
                    Image("plate&fork")
                        .resizable()
                        .padding()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .background(Color.white)
                        .cornerRadius(100)
                    Text("Menu")
                        .padding()
                        .font(.title)
                        .fontWeight(.heavy) .foregroundColor(Color(red: 1.031, green: 0.837, blue: 0.772))
                }
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Image(item.thumbnailImage)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }
                }
                Divider()
                HStack{
                    Section {
                        
                        Text("Total")
                            .fontWeight(.heavy)
                            .font(.custom("Jost-Bold", size: 28))
                            .foregroundColor(.gray)
                        Spacer()
                        Text("\(order.calculateTotalPrice())")
                            .fontWeight(.heavy)
                            .font(.custom("Jost-Bold", size: 28))
                            .foregroundColor(.gray)                    }
                }
                
                
                Section {
                    NavigationLink("Go to pay") {
                        Payment()
                                         }

                }
          
                .padding()
                
                .background(LinearGradient(gradient: .init(colors: [Color("lightblue"), Color("blue")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(50)
                .fontWeight(.heavy).font(.custom("Jost-Bold", size: 28)).foregroundColor(.white)
                
                Section {
                    
                }
            }

            
        }
        .scrollContentBackground(.hidden)
    }
        

    
    struct OrderView_Previews: PreviewProvider {
        static var previews: some View {
            OrdersView()
                .environmentObject(Order())
            NavigationStack{
                ItemDetail(item: MenuItem.example)
                    .environmentObject(Order())
            }
        }
    }
}
