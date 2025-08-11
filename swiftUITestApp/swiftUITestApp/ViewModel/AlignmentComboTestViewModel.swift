import Foundation
import Combine
import SwiftJsonUI

class AlignmentComboTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "alignment_combo_test"
    
    // Data model
    @Published var data = AlignmentComboTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
