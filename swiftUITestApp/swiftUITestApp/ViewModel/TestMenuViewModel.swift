import Foundation
import Combine
import SwiftJsonUI
import SwiftUI

enum TestDestination: Hashable {
    case marginsTest
    case alignmentTest
    case alignmentComboTest
    case weightTest
    case weightTestWithFixed
    case visibilityTest
    case disabledTest
    case textStylingTest
    case lineBreakTest
    case secureFieldTest
    case datePickerTest
    case textviewHintTest
    case relativeTest
    case bindingTest
    case converterTest
    case includeTest
    case formTest
    case componentsTest
}

class TestMenuViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "test_menu"
    
    // Data model
    @Published var data = TestMenuData()
    
    // Navigation
    @Published var navigationPath = NavigationPath()
    
    // Dynamic mode status
    @Published var dynamicModeStatus: String = "OFF"
    
    // Action handlers
    func onAppear() {
        // Called when view appears
        updateDynamicModeStatus()
    }
    
    func updateDynamicModeStatus() {
        dynamicModeStatus = ViewSwitcher.isDynamicMode ? "ON" : "OFF"
    }
    
    // Navigation methods
    func navigateToMarginsTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.marginsTest)
    }
    
    func navigateToAlignmentTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.alignmentTest)
    }
    
    func navigateToAlignmentComboTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.alignmentComboTest)
    }
    
    func navigateToWeightTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.weightTest)
    }
    
    func navigateToWeightTestWithFixed() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.weightTestWithFixed)
    }
    
    func navigateToVisibilityTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.visibilityTest)
    }
    
    func navigateToDisabledTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.disabledTest)
    }
    
    func navigateToTextStylingTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.textStylingTest)
    }
    
    func navigateToLineBreakTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.lineBreakTest)
    }
    
    func navigateToSecureFieldTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.secureFieldTest)
    }
    
    func navigateToDatePickerTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.datePickerTest)
    }
    
    func navigateToTextviewHintTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.textviewHintTest)
    }
    
    func navigateToRelativeTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.relativeTest)
    }
    
    func navigateToBindingTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.bindingTest)
    }
    
    func navigateToConverterTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.converterTest)
    }
    
    func navigateToIncludeTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.includeTest)
    }
    
    func navigateToFormTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.formTest)
    }
    
    func navigateToComponentsTest() {
        ViewSwitcher.setDynamicMode(true)
        navigationPath.append(TestDestination.componentsTest)
    }
}
