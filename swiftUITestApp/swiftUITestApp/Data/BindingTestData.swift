import Foundation
import SwiftUI
import SwiftJsonUI

struct BindingTestData {
    // Data properties from JSON
    var title: String = "Data Binding Test"
    var textValue: String = "Type something here"
    var sliderValue: Double = 50.0
    var toggleValue: Bool = false
    var counter: Int = 0
    var selectedOption: String = "Option 1"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["textValue"] {
            if let stringValue = value as? String {
                self.textValue = stringValue
            }
        }
        if let value = dictionary["sliderValue"] {
            if let doubleValue = value as? Double {
                self.sliderValue = doubleValue
            }
        }
        if let value = dictionary["toggleValue"] {
            if let boolValue = value as? Bool {
                self.toggleValue = boolValue
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
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: BindingTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["textValue"] = textValue
        dict["sliderValue"] = sliderValue
        dict["toggleValue"] = toggleValue
        dict["counter"] = counter
        dict["selectedOption"] = selectedOption
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["decreaseCounter"] = { [weak viewModel] in viewModel?.decreaseCounter() }
            dict["increaseCounter"] = { [weak viewModel] in viewModel?.increaseCounter() }
            dict["toggleChanged"] = { [weak viewModel] in viewModel?.toggleChanged() }
        }
        
        return dict
    }
}
