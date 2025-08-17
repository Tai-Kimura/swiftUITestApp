import Foundation
import SwiftUI
import SwiftJsonUI

struct ConverterTestCellData {
    // Data properties from JSON
    var subtitle: String = "Description"
    var title: String = "Item"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["subtitle"] {
            if let stringValue = value as? String {
                self.subtitle = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: ConverterTestCellViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["subtitle"] = subtitle
        dict["title"] = title
        
        return dict
    }
}
