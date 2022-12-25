//
//  ItemRow.swift
//  Deleviry App
//
//  Created by maram  on 29/05/1444 AH.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(){
                    Circle().stroke(Color(.displayP3, red: 0.777, green: 0.82, blue: 0.868), lineWidth: 4)
                }
            
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
