import Foundation
import Combine
import SwiftJsonUI

class RelativePositionTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "relative_position_test"
    
    // Data model
    @Published var data = RelativePositionTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
