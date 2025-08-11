import Foundation
import Combine
import SwiftJsonUI

class RelativeTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "relative_test"
    
    // Data model
    @Published var data = RelativeTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
