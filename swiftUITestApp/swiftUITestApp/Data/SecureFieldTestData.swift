import Foundation
import SwiftUI
import SwiftJsonUI

struct SecureFieldTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var confirmPassword: String = ""
    var password: String = ""
    var regularText: String = ""
    var title: String = "Secure Field Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["confirmPassword"] {
            if let stringValue = value as? String {
                self.confirmPassword = stringValue
            }
        }
        if let value = dictionary["password"] {
            if let stringValue = value as? String {
                self.password = stringValue
            }
        }
        if let value = dictionary["regularText"] {
            if let stringValue = value as? String {
                self.regularText = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: SecureFieldTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["confirmPassword"] = confirmPassword
        dict["password"] = password
        dict["regularText"] = regularText
        dict["title"] = title
        
        return dict
    }
}
