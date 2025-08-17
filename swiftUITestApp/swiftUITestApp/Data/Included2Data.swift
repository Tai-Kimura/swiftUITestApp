import Foundation
import SwiftUI
import SwiftJsonUI

struct Included2Data {
    // Data properties from JSON
    var viewCount: Int = 0
    var viewStatus: String = "Default Status"
    var viewTitle: String = "Default Title"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["viewCount"] {
            if let intValue = value as? Int {
                self.viewCount = intValue
            }
        }
        if let value = dictionary["viewStatus"] {
            if let stringValue = value as? String {
                self.viewStatus = stringValue
            }
        }
        if let value = dictionary["viewTitle"] {
            if let stringValue = value as? String {
                self.viewTitle = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: Included2ViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["viewCount"] = viewCount
        dict["viewStatus"] = viewStatus
        dict["viewTitle"] = viewTitle
        
        return dict
    }
}
