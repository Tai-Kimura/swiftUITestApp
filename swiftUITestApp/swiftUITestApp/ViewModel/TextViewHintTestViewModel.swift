import Foundation
import Combine
import SwiftJsonUI

class TextViewHintTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "text_view_hint_test"
    
    // Data model
    @Published var data = TextViewHintTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }

    func toggleDynamicMode() {
        ViewSwitcher.toggleDynamicMode()
        data.dynamicModeStatus = ViewSwitcher.isDynamicMode ? "ON" : "OFF"
    }
}
