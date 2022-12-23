//
//  menuView.swift
//  Deleviry App
//
//  Created by maram  on 29/05/1444 AH.
//

import SwiftUI
struct Menu: View{
    
    let menu = Bundle.main.decode([MenuSection].self,from:  "menu.json")
    
    var body: some View{
        NavigationStack{
            List {
                ForEach(menu) { section in
                    Section(section.name){
                        ForEach(section.items) { item in
                            NavigationLink (value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in ItemDetail(item: item)
            }
                .navigationTitle("Menu")
                .listStyle(.grouped)
            }
            
        }
        
    }
        
        struct profileSettings_Previews: PreviewProvider {
            static var previews: some View {
                Menu()
            }
        }
  

