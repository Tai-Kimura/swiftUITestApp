import Foundation
import SwiftUI
import SwiftJsonUI

struct ConverterTestCellData {
    // Data properties from JSON
    var title: String = "Item"
    var subtitle: String = "Description"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["subtitle"] {
            if let stringValue = value as? String {
                self.subtitle = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: ConverterTestCellViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["subtitle"] = subtitle
        
        return dict
    }
}
