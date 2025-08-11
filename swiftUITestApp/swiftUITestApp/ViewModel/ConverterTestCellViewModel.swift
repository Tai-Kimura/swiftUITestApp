import Foundation
import Combine
import SwiftJsonUI

class ConverterTestCellViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "converter_test_cell"
    
    // Data model
    @Published var data = ConverterTestCellData()
    
    // Initialize with data from collection
    func setData(_ itemData: Any) {
        if let dict = itemData as? [String: Any] {
            data.title = dict["title"] as? String ?? data.title
            data.subtitle = dict["subtitle"] as? String ?? data.subtitle
        }
    }
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    func onTap() {
        // Handle tap events
    }
    
    // Add more action handlers as needed
}
