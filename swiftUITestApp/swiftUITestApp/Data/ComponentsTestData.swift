import Foundation
import SwiftUI
import SwiftJsonUI

struct ComponentsTestData {
    // Data properties from JSON
    var toggle1IsOn: Bool = false
    var checkbox1IsOn: Bool = false
    var progress1Value: Double = 0.6
    var slider1Value: Double = 0.5
    var selectedSegment1: Int = 0
    var selectedRadio1: String = "Medium"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["toggle1IsOn"] {
            if let boolValue = value as? Bool {
                self.toggle1IsOn = boolValue
            }
        }
        if let value = dictionary["checkbox1IsOn"] {
            if let boolValue = value as? Bool {
                self.checkbox1IsOn = boolValue
            }
        }
        if let value = dictionary["progress1Value"] {
            if let doubleValue = value as? Double {
                self.progress1Value = doubleValue
            }
        }
        if let value = dictionary["slider1Value"] {
            if let doubleValue = value as? Double {
                self.slider1Value = doubleValue
            }
        }
        if let value = dictionary["selectedSegment1"] {
            if let intValue = value as? Int {
                self.selectedSegment1 = intValue
            }
        }
        if let value = dictionary["selectedRadio1"] {
            if let stringValue = value as? String {
                self.selectedRadio1 = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: ComponentsTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["toggle1IsOn"] = toggle1IsOn
        dict["checkbox1IsOn"] = checkbox1IsOn
        dict["progress1Value"] = progress1Value
        dict["slider1Value"] = slider1Value
        dict["selectedSegment1"] = selectedSegment1
        dict["selectedRadio1"] = selectedRadio1
        
        return dict
    }
}
