import Foundation
import SwiftUI
import SwiftJsonUI

struct RelativePositionTestData {
    // Data properties from JSON
    var title: String = "RelativePositionTest"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }
}
