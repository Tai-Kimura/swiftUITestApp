import Foundation
import Combine
import SwiftJsonUI

class SecureFieldTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "secure_field_test"
    
    // Data model
    @Published var data = SecureFieldTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
