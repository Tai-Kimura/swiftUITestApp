import Foundation
import Combine
import SwiftJsonUI

class LineBreakTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "line_break_test"
    
    // Data model
    @Published var data = LineBreakTestData()
    
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
