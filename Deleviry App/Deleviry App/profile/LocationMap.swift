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
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        VStack{
            ZStack{
                Map(coordinateRegion: $region)
                    .ignoresSafeArea(.all)
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
                                .position(x:200)
                                .frame(alignment: .bottomTrailing)
                                .foregroundColor(.white)
                            }
                } .padding(.bottom)
            
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
