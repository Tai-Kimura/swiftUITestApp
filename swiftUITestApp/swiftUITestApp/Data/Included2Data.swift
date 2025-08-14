import Foundation
import SwiftUI
import SwiftJsonUI

struct Included2Data {
    // Data properties from JSON
    var title: String = "Included2"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: Included2ViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        
        return dict
    }
}
