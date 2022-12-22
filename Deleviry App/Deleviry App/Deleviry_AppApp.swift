//
//  Deleviry_AppApp.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI

@main
struct Deleviry_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            profileView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
