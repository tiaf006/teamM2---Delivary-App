//
//  Successful.swift
//  orderingPage


import SwiftUI

struct Successfull: View {
    @State var showSecondView = false
    var body: some View {
        VStack{
            Text("Successfull")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 3.737, green: 3.571, blue: 6.342))
                
            Button { 
                showSecondView.toggle()
            } label: {
                Text("Done")
                    .fontWeight(.heavy)
                    .font(.custom("Jost-Bold", size: 28))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 50)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("lightblue"), Color("blue")]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(50)
            }
            .offset(y: 100)
            .fullScreenCover(isPresented: $showSecondView) {
                MainView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.778, green: 0.816, blue: 0.861))
        .ignoresSafeArea()
    }
}

struct Successful_Previews: PreviewProvider {
    static var previews: some View {
        Successfull()
    }
}

