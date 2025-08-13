import Foundation
import Combine
import SwiftJsonUI

class IncludeTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "include_test"
    
    // Data model
    @Published var data = IncludeTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
