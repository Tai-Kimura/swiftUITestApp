//
//  swiftUITestAppApp.swift
//  swiftUITestApp
//
//  Created by 木村太一朗 on 2025/08/04.
//

import SwiftUI
import CoreData

@main
struct swiftUITestAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
