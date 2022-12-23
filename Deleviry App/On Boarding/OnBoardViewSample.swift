//
//  OnBoardViewSample.swift
//  Deleviry App
//
//  Created by Lana on 23/12/2022.
//

import SwiftUI

//how the onboard page will look like 🤓
struct OnBoardViewSample: View {
    var page: Page
    var body: some View {
        VStack(spacing: 8) {
            Image("\(page.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding()
            Text(page.title)
//                .font(.title)
                .font(Font.custom("Avenir", size: 40))
                .italic()
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0/255, green: 78/255, blue: 152/255))
                .frame(width: 300)
                .padding(8)
            Text(page.description)
                .font(Font.custom("Avenir", size: 25))
                .foregroundColor(Color(red: 165/255, green: 196/255, blue: 220/255))
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(8)
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardViewSample(page: Page.samplePage)
    }
}
