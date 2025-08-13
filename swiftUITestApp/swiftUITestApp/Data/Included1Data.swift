import Foundation
import SwiftUI
import SwiftJsonUI

struct Included1Data {
    // Data properties from JSON
    var title: String = "Default Title"
    var message: String = "Default Message"
    var count: Int = 0

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["message"] {
            if let stringValue = value as? String {
                self.message = stringValue
            }
        }
        if let value = dictionary["count"] {
            if let intValue = value as? Int {
                self.count = intValue
            }
        }
    }
}
