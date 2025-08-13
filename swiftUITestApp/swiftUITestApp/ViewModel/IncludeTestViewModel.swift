import Foundation
import Combine
import SwiftJsonUI

class IncludeTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "include_test"
    
    // Data model
    @Published var data = IncludeTestData()
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Add more action handlers as needed
    func onTap() {
        // Handle tap events
    }
    
    // Function to increment count for real-time update testing
    func incrementCount() {
        data.mainCount += 1
    }
    
    // Function to decrement count
    func decrementCount() {
        data.mainCount -= 1
    }
    
    // Function to reset count
    func resetCount() {
        data.mainCount = 100
    }
    
    // Function to change user name
    func changeUserName() {
        let names = ["John Doe", "Jane Smith", "Test User", "Admin User", "Guest"]
        if let randomName = names.randomElement() {
            data.userName = randomName
        }
    }
    
    // Function to toggle status
    func toggleStatus() {
        data.mainStatus = data.mainStatus == "Main Active" ? "Main Inactive" : "Main Active"
    }
}
