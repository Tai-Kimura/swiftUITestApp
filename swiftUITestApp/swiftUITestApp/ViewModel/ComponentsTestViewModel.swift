import Foundation
import Combine
import SwiftJsonUI

class ComponentsTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "components_test"
    
    // Data model
    @Published var data = ComponentsTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
