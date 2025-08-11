import Foundation
import Combine
import SwiftJsonUI

class WeightTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "weight_test"
    
    // Data model
    @Published var data = WeightTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
