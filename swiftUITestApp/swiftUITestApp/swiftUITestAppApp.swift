//
//  swiftUITestAppApp.swift
//  swiftUITestApp
//
//  Created by 木村太一朗 on 2025/08/04.
//

import SwiftUI
import CoreData
import SwiftJsonUI

@main
struct swiftUITestAppApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        HotLoaderSetup.configure()
        ViewSwitcher.setDynamicMode(true)
    }

    var body: some Scene {
        WindowGroup {
            TestMenuView()
        }
    }
}
