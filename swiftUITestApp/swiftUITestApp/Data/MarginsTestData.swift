import Foundation
import SwiftUI
import SwiftJsonUI

struct MarginsTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var title: String = "Margins & Padding Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: MarginsTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["title"] = title
        
        return dict
    }
}
