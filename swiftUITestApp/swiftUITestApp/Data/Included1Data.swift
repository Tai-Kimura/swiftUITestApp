import Foundation
import SwiftUI
import SwiftJsonUI

struct Included1Data {
    // Data properties from JSON
    var title: String = "Included1"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }
}
