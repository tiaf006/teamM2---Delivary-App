//
//  ItemDetail.swift
//  Deleviry App
//
//  Created by maram  on 29/05/1444 AH.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            
            Image(item.mainImage)
            Text(item.description)
                .padding()
//            Button("Order This") {
//               FoodItem.add(item: item)
//            }
            .padding([.top, .horizontal])
            
            Button(action: {}) {
                Text("Order This")
                    //.font(.title2)
                    .fontWeight(.heavy)
                    .font(.custom("Jost-Bold", size: 28))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("lightblue"), Color("blue")]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(15)
            }
            Spacer()
        }
        .navigationTitle(item.name)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ItemDetail(item: MenuItem.example)
        }
    }
}
