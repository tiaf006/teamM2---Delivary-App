//
//  MainView.swift
//  Deleviry App
//
//  Created by maram  on 29/05/1444 AH.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Menu()
                .tabItem {
                    Label("Menu", systemImage: "homekit")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
            profileView()
                .tabItem {
                    Label("profile", systemImage: "person.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
