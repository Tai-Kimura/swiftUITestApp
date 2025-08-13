import Foundation
import SwiftUI
import SwiftJsonUI

struct BindingTestData {
    // Data properties from JSON
    var title: String = "Data Binding Test"
    var textValue: String = "Type something here"
    var sliderValue: Double = 50.0
    var toggleValue: Bool = false
    var counter: Int = 0
    var selectedOption: String = "Option 1"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textValue"] {
            if let stringValue = value as? String {
                self.textValue = stringValue
            }
        }
        if let value = dictionary["sliderValue"] {
            if let doubleValue = value as? Double {
                self.sliderValue = doubleValue
            }
        }
        if let value = dictionary["toggleValue"] {
            if let boolValue = value as? Bool {
                self.toggleValue = boolValue
            }
        }
        if let value = dictionary["counter"] {
            if let intValue = value as? Int {
                self.counter = intValue
            }
        }
        if let value = dictionary["selectedOption"] {
            if let stringValue = value as? String {
                self.selectedOption = stringValue
            }
        }
    }
}
