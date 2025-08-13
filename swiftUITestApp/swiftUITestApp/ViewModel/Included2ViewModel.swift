import Foundation
import Combine
import SwiftJsonUI

class Included2ViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "included_2"
    
    // Data model
    @Published var data = Included2Data()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
