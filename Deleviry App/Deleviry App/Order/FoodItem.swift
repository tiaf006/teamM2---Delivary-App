//
//  Item.swift
//  orderingPage
//
//  Created by Shatha on 29/05/1444 AH.
//

import SwiftUI

struct FoodItem: Identifiable {
    var id = UUID().uuidString
    var name : String
    var details: String
    var image: String
    var price: Float
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}
