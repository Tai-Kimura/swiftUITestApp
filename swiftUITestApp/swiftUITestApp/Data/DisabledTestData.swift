import Foundation
import SwiftUI
import SwiftJsonUI

struct DisabledTestData {
    // Data properties from JSON
    var title: String = "Disabled State Test"
    var textFieldValue: String = ""
    var isEnabled: Bool = true

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textFieldValue"] {
            if let stringValue = value as? String {
                self.textFieldValue = stringValue
            }
        }
        if let value = dictionary["isEnabled"] {
            if let boolValue = value as? Bool {
                self.isEnabled = boolValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: DisabledTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["textFieldValue"] = textFieldValue
        dict["isEnabled"] = isEnabled
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["onEnabledButtonTap"] = { [weak viewModel] in viewModel?.onEnabledButtonTap() }
            dict["onDisabledButtonTap"] = { [weak viewModel] in viewModel?.onDisabledButtonTap() }
            dict["onTouchDisabledTap"] = { [weak viewModel] in viewModel?.onTouchDisabledTap() }
            dict["toggleEnableState"] = { [weak viewModel] in viewModel?.toggleEnableState() }
            dict["onDynamicButtonTap"] = { [weak viewModel] in viewModel?.onDynamicButtonTap() }
        }
        
        return dict
    }
}
