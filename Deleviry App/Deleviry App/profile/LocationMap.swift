//
//  LocationMap.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 29/05/1444 AH.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50, longitude: 50),
        span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
    )
    @State private var locations = [Location]()
    
    var body: some View {
        VStack{
            Spacer(minLength: 30)
            ZStack{
               
                Map(coordinateRegion: $region, annotationItems: locations) { location in
                    MapMarker(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
                }
                Circle()
                    .fill(.blue)
                    .opacity(0.3)
                    .frame(width: 32, height: 32)
               
                ZStack{
                                Button {
                                    let newLocation = Location(id: UUID(), name: "New location", description: "", latitude: region.center.latitude, longitude: region.center.longitude)
                                        locations.append(newLocation)
                                                                      
                                } label: {
                                    Text("Add Location")
                                }
                                .padding()
                                .background(.black.opacity(0.75))
                                .cornerRadius(50)
                                .position(x:310,y: 310)
                                .frame(alignment: .bottomTrailing)
                                .foregroundColor(.white)
                            }
                } .padding(.bottom)
            
            List{
                Section("Saved Locations"){
                    ForEach(locations) { location in
                        Text(location.name)
                }
                }
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



