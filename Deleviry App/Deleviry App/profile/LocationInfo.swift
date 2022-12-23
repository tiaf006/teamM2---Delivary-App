//
//  LocationInfo.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 29/05/1444 AH.
//

import Foundation
struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}
