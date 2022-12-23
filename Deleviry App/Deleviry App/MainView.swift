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
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "homekit")
                }
            OrderView()
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
