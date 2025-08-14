import Foundation
import SwiftUI
import SwiftJsonUI

struct TextViewHintTestData {
    // Data properties from JSON
    var simpleText: String = ""
    var flexibleText: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["simpleText"] {
            if let stringValue = value as? String {
                self.simpleText = stringValue
            }
        }
        if let value = dictionary["flexibleText"] {
            if let stringValue = value as? String {
                self.flexibleText = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: TextViewHintTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["simpleText"] = simpleText
        dict["flexibleText"] = flexibleText
        
        return dict
    }
}
