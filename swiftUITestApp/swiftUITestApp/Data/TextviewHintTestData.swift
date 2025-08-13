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
}
