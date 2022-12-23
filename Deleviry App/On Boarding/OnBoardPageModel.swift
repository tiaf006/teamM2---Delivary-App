//
//  OnBoardPageModel.swift
//  Deleviry App
//
//  Created by Lana on 23/12/2022.
//

import Foundation

//Modeling the onboard page 🛫

struct Page: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var description: String
    var image: String
    var tag: Int
    
    //this is just a sample
    static  var samplePage = Page(title: "Some title", description: "alot of words here and there to keep things on the go and make want to try the app", image: "Lotus Coffee", tag: 0)
    
    //here will add the dta of the onbiarding pages in an array 🛫
    static  var onBoardpages: [Page] = [
        Page(title: "Berry good delicacies", description: "Something good is on its way", image: "Berry bread", tag: 0),
        Page(title: "At the comfort of your home", description: "no need to wait in line for your favorite meal!", image: "Egg sandwich", tag: 1),
        Page(title: "Share with loved ones", description: "Order now and have great times", image: "Melon times", tag: 2),
        ]
}
