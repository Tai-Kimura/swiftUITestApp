import Foundation
import Combine
import SwiftJsonUI

class MarginsTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "margins_test"
    
    // Data model
    @Published var data = MarginsTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
