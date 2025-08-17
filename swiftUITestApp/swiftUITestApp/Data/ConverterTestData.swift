import Foundation
import SwiftUI
import SwiftJsonUI

struct ConverterTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var items: CollectionDataSource = CollectionDataSource()
    var title: String = "Converter Components Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["items"] {
            if let typedValue = value as? CollectionDataSource {
                self.items = typedValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: ConverterTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["items"] = items
        dict["title"] = title
        
        return dict
    }
}
