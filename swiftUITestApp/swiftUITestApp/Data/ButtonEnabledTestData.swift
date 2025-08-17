import Foundation
import SwiftUI
import SwiftJsonUI

struct ButtonEnabledTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var isButtonEnabled: Bool = true
    var title: String = "Button Enabled Test"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["isButtonEnabled"] {
            if let boolValue = value as? Bool {
                self.isButtonEnabled = boolValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: ButtonEnabledTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["isButtonEnabled"] = isButtonEnabled
        dict["title"] = title
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["testAction"] = { [weak viewModel] in viewModel?.testAction() }
            dict["toggleEnabled"] = { [weak viewModel] in viewModel?.toggleEnabled() }
            dict["neverCalled"] = { [weak viewModel] in viewModel?.neverCalled() }
            dict["alwaysCalled"] = { [weak viewModel] in viewModel?.alwaysCalled() }
        }
        
        return dict
    }
}
