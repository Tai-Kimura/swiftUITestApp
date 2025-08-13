import Foundation
import SwiftUI
import SwiftJsonUI

struct DatePickerTestData {
    // Data properties from JSON
    var title: String = "Date Picker Test"
    var selectedDate: String = "2025-08-11"
    var startDate: String = "2025-01-01"
    var endDate: String = "2025-12-31"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["selectedDate"] {
            if let stringValue = value as? String {
                self.selectedDate = stringValue
            }
        }
        if let value = dictionary["startDate"] {
            if let stringValue = value as? String {
                self.startDate = stringValue
            }
        }
        if let value = dictionary["endDate"] {
            if let stringValue = value as? String {
                self.endDate = stringValue
            }
        }
    }
}
