import Foundation
import SwiftUI
import SwiftJsonUI

struct TestMenuData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
    }
}
