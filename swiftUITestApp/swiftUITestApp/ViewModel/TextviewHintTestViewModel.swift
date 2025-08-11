import Foundation
import Combine
import SwiftJsonUI

class TextviewHintTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "textview_hint_test"
    
    // Data model
    @Published var data = TextviewHintTestData()
    
    // TextView text properties
    @Published var simpleTextViewText: String = ""
    @Published var flexibleTextViewText: String = ""
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
}
