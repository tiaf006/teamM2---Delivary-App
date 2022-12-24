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
//                .navigationTitle("Menu")
//                .listStyle(.grouped)
            }
            
        }
        
    }
        
        struct profileSettings_Previews: PreviewProvider {
            static var previews: some View {
                Menu()
            }
        }
  

