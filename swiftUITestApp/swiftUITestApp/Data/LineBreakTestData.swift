import Foundation
import SwiftUI
import SwiftJsonUI

struct LineBreakTestData {
    // Data properties from JSON
    var title: String = "Line Break Mode Test"
    var longText: String = "This is a very long text that will be used to demonstrate different line break modes in SwiftJsonUI. The text should be long enough to test truncation and wrapping behaviors."

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["longText"] {
            if let stringValue = value as? String {
                self.longText = stringValue
            }
        }
    }
}
