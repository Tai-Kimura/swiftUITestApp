import Foundation
import SwiftUI
import SwiftJsonUI

struct DisabledTestData {
    // Data properties from JSON
    var title: String = "Disabled State Test"
    var textFieldValue: String = ""
    var isEnabled: Bool = true

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textFieldValue"] {
            if let stringValue = value as? String {
                self.textFieldValue = stringValue
            }
        }
        if let value = dictionary["isEnabled"] {
            if let boolValue = value as? Bool {
                self.isEnabled = boolValue
            }
        }
    }
}
