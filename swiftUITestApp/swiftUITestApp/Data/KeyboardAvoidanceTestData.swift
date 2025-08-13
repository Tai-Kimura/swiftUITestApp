import Foundation
import SwiftUI
import SwiftJsonUI

struct KeyboardAvoidanceTestData {
    // Data properties from JSON
    var title: String = "Keyboard Avoidance Test"
    var textField1: String = ""
    var textField2: String = ""
    var textField3: String = ""
    var textField4: String = ""
    var textField5: String = ""
    var textView: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textField1"] {
            if let stringValue = value as? String {
                self.textField1 = stringValue
            }
        }
        if let value = dictionary["textField2"] {
            if let stringValue = value as? String {
                self.textField2 = stringValue
            }
        }
        if let value = dictionary["textField3"] {
            if let stringValue = value as? String {
                self.textField3 = stringValue
            }
        }
        if let value = dictionary["textField4"] {
            if let stringValue = value as? String {
                self.textField4 = stringValue
            }
        }
        if let value = dictionary["textField5"] {
            if let stringValue = value as? String {
                self.textField5 = stringValue
            }
        }
        if let value = dictionary["textView"] {
            if let stringValue = value as? String {
                self.textView = stringValue
            }
        }
    }
}
