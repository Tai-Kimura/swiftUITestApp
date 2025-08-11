import Foundation
import Combine
import SwiftJsonUI

class BindingTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "binding_test"
    
    // Data model
    @Published var data = BindingTestData()
    
    // UI State
    @Published var toggle_switchIsOn = false
    
    // Action handlers
    func onAppear() {
        // Sync toggle state with data
        toggle_switchIsOn = data.toggleValue
    }
    
    func increaseCounter() {
        data.counter += 1
    }
    
    func decreaseCounter() {
        data.counter -= 1
    }
    
    func toggleChanged() {
        data.toggleValue.toggle()
        toggle_switchIsOn = data.toggleValue
    }
    
    func sliderChanged(_ value: Double) {
        data.sliderValue = value
    }
}
