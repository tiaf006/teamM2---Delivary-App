//
//  Deleviry_AppApp.swift
//  Deleviry App
//
//  Created by TAIF Al-zahrani on 28/05/1444 AH.
//

import SwiftUI
import Firebase
@main
struct Deleviry_AppApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        FirebaseApp.configure()
        
    }
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
