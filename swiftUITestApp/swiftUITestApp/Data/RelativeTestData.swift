import Foundation
import SwiftUI
import SwiftJsonUI

struct RelativeTestData {
    // Data properties from JSON
    var title: String = "RelativePosition Test - Margins & Padding"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: RelativeTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        
        return dict
    }
}
