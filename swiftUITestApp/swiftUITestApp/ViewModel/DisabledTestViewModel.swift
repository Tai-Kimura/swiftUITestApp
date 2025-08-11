import Foundation
import Combine
import SwiftJsonUI

class DisabledTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "disabled_test"
    
    // Data model
    @Published var data = DisabledTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    func onEnabledButtonTap() {
        print("Enabled button tapped")
    }
    
    func onDisabledButtonTap() {
        // This should not be called since button is disabled
        print("Disabled button tapped - should not happen")
    }
    
    func onTouchDisabledTap() {
        print("Touch disabled button tapped")
    }
    
    func toggleEnableState() {
        data.isEnabled.toggle()
    }
    
    func onDynamicButtonTap() {
        print("Dynamic button tapped - enabled: \(data.isEnabled)")
    }
}
