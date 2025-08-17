import Foundation
import Combine
import SwiftJsonUI

class WeightTestWithFixedViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "weight_test_with_fixed"
    
    // Data model
    @Published var data = WeightTestWithFixedData()
    
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
