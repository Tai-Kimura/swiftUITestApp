import Foundation
import SwiftUI
import SwiftJsonUI

struct KeyboardAvoidanceTestData {
    // Data properties from JSON
    var title: String = "Keyboard Avoidance Test"
    var textField1: String = ""
    var textField2: String = ""
    var textField3: String = ""
    var textField4: String = ""
    var textField5: String = ""
    var textView: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textField1"] {
            if let stringValue = value as? String {
                self.textField1 = stringValue
            }
        }
        if let value = dictionary["textField2"] {
            if let stringValue = value as? String {
                self.textField2 = stringValue
            }
        }
        if let value = dictionary["textField3"] {
            if let stringValue = value as? String {
                self.textField3 = stringValue
            }
        }
        if let value = dictionary["textField4"] {
            if let stringValue = value as? String {
                self.textField4 = stringValue
            }
        }
        if let value = dictionary["textField5"] {
            if let stringValue = value as? String {
                self.textField5 = stringValue
            }
        }
        if let value = dictionary["textView"] {
            if let stringValue = value as? String {
                self.textView = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: KeyboardAvoidanceTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["textField1"] = textField1
        dict["textField2"] = textField2
        dict["textField3"] = textField3
        dict["textField4"] = textField4
        dict["textField5"] = textField5
        dict["textView"] = textView
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["submitForm"] = { [weak viewModel] in viewModel?.submitForm() }
        }
        
        return dict
    }
}
