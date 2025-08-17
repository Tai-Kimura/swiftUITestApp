import Foundation
import SwiftUI
import SwiftJsonUI

struct BindingTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var counter: Int = 0
    var selectedOption: String = "Option 1"
    var sliderValue: Double = 50.0
    var textValue: String = "Type something here"
    var title: String = "Data Binding Test"
    var toggleValue: Bool = false

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["counter"] {
            if let intValue = value as? Int {
                self.counter = intValue
            }
        }
        if let value = dictionary["selectedOption"] {
            if let stringValue = value as? String {
                self.selectedOption = stringValue
            }
        }
        if let value = dictionary["sliderValue"] {
            if let doubleValue = value as? Double {
                self.sliderValue = doubleValue
            }
        }
        if let value = dictionary["textValue"] {
            if let stringValue = value as? String {
                self.textValue = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["toggleValue"] {
            if let boolValue = value as? Bool {
                self.toggleValue = boolValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: BindingTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["counter"] = counter
        dict["selectedOption"] = selectedOption
        dict["sliderValue"] = sliderValue
        dict["textValue"] = textValue
        dict["title"] = title
        dict["toggleValue"] = toggleValue
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["decreaseCounter"] = { [weak viewModel] in viewModel?.decreaseCounter() }
            dict["increaseCounter"] = { [weak viewModel] in viewModel?.increaseCounter() }
            dict["toggleChanged"] = { [weak viewModel] in viewModel?.toggleChanged() }
        }
        
        return dict
    }
}
