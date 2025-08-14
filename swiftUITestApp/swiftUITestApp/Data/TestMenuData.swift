import Foundation
import SwiftUI
import SwiftJsonUI

struct TestMenuData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: TestMenuViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["navigateToMarginsTest"] = { [weak viewModel] in viewModel?.navigateToMarginsTest() }
            dict["navigateToAlignmentTest"] = { [weak viewModel] in viewModel?.navigateToAlignmentTest() }
            dict["navigateToAlignmentComboTest"] = { [weak viewModel] in viewModel?.navigateToAlignmentComboTest() }
            dict["navigateToWeightTest"] = { [weak viewModel] in viewModel?.navigateToWeightTest() }
            dict["navigateToWeightTestWithFixed"] = { [weak viewModel] in viewModel?.navigateToWeightTestWithFixed() }
            dict["navigateToVisibilityTest"] = { [weak viewModel] in viewModel?.navigateToVisibilityTest() }
            dict["navigateToDisabledTest"] = { [weak viewModel] in viewModel?.navigateToDisabledTest() }
            dict["navigateToTextStylingTest"] = { [weak viewModel] in viewModel?.navigateToTextStylingTest() }
            dict["navigateToComponentsTest"] = { [weak viewModel] in viewModel?.navigateToComponentsTest() }
            dict["navigateToLineBreakTest"] = { [weak viewModel] in viewModel?.navigateToLineBreakTest() }
            dict["navigateToSecureFieldTest"] = { [weak viewModel] in viewModel?.navigateToSecureFieldTest() }
            dict["navigateToDatePickerTest"] = { [weak viewModel] in viewModel?.navigateToDatePickerTest() }
            dict["navigateToTextviewHintTest"] = { [weak viewModel] in viewModel?.navigateToTextviewHintTest() }
            dict["navigateToRelativeTest"] = { [weak viewModel] in viewModel?.navigateToRelativeTest() }
            dict["navigateToBindingTest"] = { [weak viewModel] in viewModel?.navigateToBindingTest() }
            dict["navigateToConverterTest"] = { [weak viewModel] in viewModel?.navigateToConverterTest() }
            dict["navigateToIncludeTest"] = { [weak viewModel] in viewModel?.navigateToIncludeTest() }
            dict["navigateToFormTest"] = { [weak viewModel] in viewModel?.navigateToFormTest() }
        }
        
        return dict
    }
}
