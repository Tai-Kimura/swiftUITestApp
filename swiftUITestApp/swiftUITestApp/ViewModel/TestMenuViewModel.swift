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
        navigationPath.append(TestDestination.marginsTest)
    }
    
    func navigateToAlignmentTest() {
        navigationPath.append(TestDestination.alignmentTest)
    }
    
    func navigateToAlignmentComboTest() {
        navigationPath.append(TestDestination.alignmentComboTest)
    }
    
    func navigateToWeightTest() {
        navigationPath.append(TestDestination.weightTest)
    }
    
    func navigateToWeightTestWithFixed() {
        navigationPath.append(TestDestination.weightTestWithFixed)
    }
    
    func navigateToVisibilityTest() {
        navigationPath.append(TestDestination.visibilityTest)
    }
    
    func navigateToDisabledTest() {
        navigationPath.append(TestDestination.disabledTest)
    }
    
    func navigateToTextStylingTest() {
        navigationPath.append(TestDestination.textStylingTest)
    }
    
    func navigateToLineBreakTest() {
        navigationPath.append(TestDestination.lineBreakTest)
    }
    
    func navigateToSecureFieldTest() {
        navigationPath.append(TestDestination.secureFieldTest)
    }
    
    func navigateToDatePickerTest() {
        navigationPath.append(TestDestination.datePickerTest)
    }
    
    func navigateToTextviewHintTest() {
        navigationPath.append(TestDestination.textviewHintTest)
    }
    
    func navigateToRelativeTest() {
        navigationPath.append(TestDestination.relativeTest)
    }
    
    func navigateToBindingTest() {
        navigationPath.append(TestDestination.bindingTest)
    }
    
    func navigateToConverterTest() {
        navigationPath.append(TestDestination.converterTest)
    }
    
    func navigateToIncludeTest() {
        navigationPath.append(TestDestination.includeTest)
    }
    
    func navigateToFormTest() {
        navigationPath.append(TestDestination.formTest)
    }
    
    func navigateToComponentsTest() {
        navigationPath.append(TestDestination.componentsTest)
    }
}
