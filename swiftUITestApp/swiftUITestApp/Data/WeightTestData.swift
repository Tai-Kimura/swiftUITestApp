import Foundation
import SwiftUI
import SwiftJsonUI

struct WeightTestData {
    // Data properties from JSON
    var title: String = "Weight Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }
}
