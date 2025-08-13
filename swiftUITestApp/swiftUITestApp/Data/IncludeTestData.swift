import Foundation
import SwiftUI
import SwiftJsonUI

struct IncludeTestData {
    // Data properties from JSON
    var title: String = "Include Component Test"
    var mainStatus: String = "Main Active"
    var mainCount: Int = 100
    var userName: String = "Test User"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["mainStatus"] {
            if let stringValue = value as? String {
                self.mainStatus = stringValue
            }
        }
        if let value = dictionary["mainCount"] {
            if let intValue = value as? Int {
                self.mainCount = intValue
            }
        }
        if let value = dictionary["userName"] {
            if let stringValue = value as? String {
                self.userName = stringValue
            }
        }
    }
}
