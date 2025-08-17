import Foundation
import SwiftUI
import SwiftJsonUI

struct LineBreakTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var longText: String = "This is a very long text that will be used to demonstrate different line break modes in SwiftJsonUI. The text should be long enough to test truncation and wrapping behaviors."
    var title: String = "Line Break Mode Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["longText"] {
            if let stringValue = value as? String {
                self.longText = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: LineBreakTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["longText"] = longText
        dict["title"] = title
        
        return dict
    }
}
