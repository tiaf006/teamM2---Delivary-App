//
//  CartViewModel.swift
//  orderingPage
//
//  Created by Shatha on 29/05/1444 AH.
//

import SwiftUI

class CartViewModel: ObservableObject {
    @Published var items = [
        FoodItem(name: "Fresh-baked Croissant", details: "Breakfast", image: "croissant", price: 3.00, quantity: 1, offset: 0, isSwiped: false),
        FoodItem(name: "Maple French Toast", details: "Breakfast", image: "french toast", price: 6.00, quantity: 2, offset: 0, isSwiped: false),
        FoodItem(name: "full", details: "Breakfast", image: "full", price: 12.00, quantity: 1, offset: 0, isSwiped: false),
        FoodItem(name: "Stack-o-Pancakes", details: "Breakfast", image: "pancake", price: 8.00, quantity: 1, offset: 0, isSwiped: false),
        FoodItem(name: "Mexican Mocha", details: "Drinks", image: "mocha", price: 7.00, quantity: 1, offset: 0, isSwiped: false),
        FoodItem(name: "Straight Up OJ", details: "Drinks", image: "orange juice", price: 3.00, quantity: 1, offset: 0, isSwiped: false)
    ]
}
