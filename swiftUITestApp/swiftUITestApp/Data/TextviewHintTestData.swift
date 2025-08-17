import Foundation
import SwiftUI
import SwiftJsonUI

struct TextViewHintTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var flexibleText: String = ""
    var simpleText: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["flexibleText"] {
            if let stringValue = value as? String {
                self.flexibleText = stringValue
            }
        }
        if let value = dictionary["simpleText"] {
            if let stringValue = value as? String {
                self.simpleText = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: TextViewHintTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["flexibleText"] = flexibleText
        dict["simpleText"] = simpleText
        
        return dict
    }
}
