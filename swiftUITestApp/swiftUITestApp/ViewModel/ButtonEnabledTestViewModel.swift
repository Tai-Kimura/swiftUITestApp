import Foundation
import Combine
import SwiftJsonUI

class ButtonEnabledTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "button_enabled_test"
    
    // Data model
    @Published var data = ButtonEnabledTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
    
    func toggleEnabled() {
        data.isButtonEnabled.toggle()
    }
    
    func testAction() {
        print("Test button clicked!")
    }
    
    func neverCalled() {
        print("This should never be called")
    }
    
    func alwaysCalled() {
        print("Always enabled button clicked")
    }

    func toggleDynamicMode() {
        ViewSwitcher.toggleDynamicMode()
        data.dynamicModeStatus = ViewSwitcher.isDynamicMode ? "ON" : "OFF"
    }
}
