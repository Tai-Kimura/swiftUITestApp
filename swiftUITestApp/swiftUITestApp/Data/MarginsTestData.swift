import Foundation
import SwiftUI
import SwiftJsonUI

struct MarginsTestData {
    // Data properties from JSON
    var title: String = "Margins & Padding Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }
}
