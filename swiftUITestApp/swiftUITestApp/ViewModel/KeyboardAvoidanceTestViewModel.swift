import Foundation
import Combine
import SwiftJsonUI

class KeyboardAvoidanceTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "keyboard_avoidance_test"
    
    // Data model
    @Published var data = KeyboardAvoidanceTestData()
    
    // TextView state variables
    @Published var textviewText: String = ""
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    func submitForm() {
        print("Form submitted!")
        print("TextField1: \(data.textField1)")
        print("TextField2: \(data.textField2)")
        print("TextField3: \(data.textField3)")
        print("TextField4: \(data.textField4)")
        print("TextField5: \(data.textField5)")
        print("TextView: \(textviewText)")
    }
}
