import Foundation
import Combine
import SwiftJsonUI

class StackAlignmentTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "stack_alignment_test"
    
    // Data model
    @Published var data = StackAlignmentTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
