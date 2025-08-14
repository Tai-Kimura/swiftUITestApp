import Foundation
import SwiftUI
import SwiftJsonUI

struct SecureFieldTestData {
    // Data properties from JSON
    var title: String = "Secure Field Test"
    var password: String = ""
    var confirmPassword: String = ""
    var regularText: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["password"] {
            if let stringValue = value as? String {
                self.password = stringValue
            }
        }
        if let value = dictionary["confirmPassword"] {
            if let stringValue = value as? String {
                self.confirmPassword = stringValue
            }
        }
        if let value = dictionary["regularText"] {
            if let stringValue = value as? String {
                self.regularText = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: SecureFieldTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["password"] = password
        dict["confirmPassword"] = confirmPassword
        dict["regularText"] = regularText
        
        return dict
    }
}
