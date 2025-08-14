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

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: RelativePositionTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        
        return dict
    }
}
