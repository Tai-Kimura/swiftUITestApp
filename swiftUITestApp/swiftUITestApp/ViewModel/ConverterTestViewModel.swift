import Foundation
import Combine
import SwiftJsonUI

class ConverterTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "converter_test"
    
    // Data model
    @Published var data = ConverterTestData()
    
    init() {
        // Initialize collection data source with test data
        data.items.setCellData(for: "ConverterTestCell", data: [
            ["title": "Item 1", "subtitle": "First test item"],
            ["title": "Item 2", "subtitle": "Second test item"],
            ["title": "Item 3", "subtitle": "Third test item"],
            ["title": "Item 4", "subtitle": "Fourth test item"]
        ])
    }
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
