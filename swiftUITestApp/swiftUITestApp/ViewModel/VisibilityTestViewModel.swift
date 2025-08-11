import Foundation
import Combine
import SwiftJsonUI

class VisibilityTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "visibility_test"
    
    // Data model
    @Published var data = VisibilityTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
