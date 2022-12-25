//
//  LocationMap.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 29/05/1444 AH.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50, longitude: 50),
        span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
    )
    @State private var locations: [String] = []
    
    var body: some View {
        VStack{
            Spacer(minLength: 30)
            ZStack{
               
                Map(coordinateRegion: $region)
                    .frame(height:400)
                    .border(Color(red: 0.778, green: 0.816, blue: 0.861).opacity(0.20), width: 5)
                Circle()
                    .fill(.blue)
                    .opacity(0.3)
                    .frame(width: 32, height: 32)
               
                ZStack{
                                Button {// create a new location
                                } label: {
                                    Text("Add Location")
                                    //Image(systemName: "plus")
                                }
                                .padding()
                                .background(.black.opacity(0.75))
                                .cornerRadius(50)
                                .position(x:310,y: 350)
                                .frame(alignment: .bottomTrailing)
                                .foregroundColor(.white)
                            }
                } .padding(.bottom)
            
            /*Button("Edit",action: {})
                .padding()
                .background(Color(red: 0.778, green: 0.816, blue: 0.861))
                .cornerRadius(50)
                .foregroundColor(.white)
                .offset(x:150)*/
            List{
                
                Section("Saved Locations"){
                    Text("location 1")
                    Text("location 2")                }
            }.scrollContentBackground(.hidden)
                .background(Color(red: 0.778, green: 0.816, blue: 0.861).opacity(0.4))
               
            
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}



