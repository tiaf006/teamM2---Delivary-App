//
//  DeleviryAppApp.swift
//  DeleviryApp
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI

@main
struct DeleviryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
