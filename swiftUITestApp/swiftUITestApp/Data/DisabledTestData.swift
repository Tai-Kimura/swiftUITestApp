import Foundation
import SwiftUI
import SwiftJsonUI

struct DisabledTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var isEnabled: Bool = true
    var textFieldValue: String = ""
    var title: String = "Disabled State Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["isEnabled"] {
            if let boolValue = value as? Bool {
                self.isEnabled = boolValue
            }
        }
        if let value = dictionary["textFieldValue"] {
            if let stringValue = value as? String {
                self.textFieldValue = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: DisabledTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["isEnabled"] = isEnabled
        dict["textFieldValue"] = textFieldValue
        dict["title"] = title
        
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
