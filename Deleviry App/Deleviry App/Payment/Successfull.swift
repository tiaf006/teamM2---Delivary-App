//
//  Successful.swift
//  orderingPage


import SwiftUI

struct Successfull: View {
    var body: some View {
        Text("Successfull")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color(red: 3.737, green: 3.571, blue: 6.342))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.778, green: 0.816, blue: 0.861))
            .ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    // your code here
                    Payment()
                }
            }
    }
}

struct Successful_Previews: PreviewProvider {
    static var previews: some View {
        Successfull()
    }
}

