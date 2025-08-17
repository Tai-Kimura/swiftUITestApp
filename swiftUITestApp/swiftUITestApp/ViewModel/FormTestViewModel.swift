import Foundation
import Combine
import SwiftJsonUI

class FormTestViewModel: ObservableObject {
    // JSON file reference for hot reload
    let jsonFileName = "form_test"
    
    // Data model
    @Published var data = FormTestData()
    
    // TextView state variables
    @Published var bioText: String = ""
    @Published var notesText: String = ""
    @Published var commentsText: String = ""
    
    // Toggle state
    @Published var agreeToggleIsOn: Bool = false
    
    // Action handlers
    func onAppear() {
        // Called when view appears
    }
    
    // Form actions
    func submitForm() {
        print("Form submitted!")
        print("First Name: \(data.firstName)")
        print("Last Name: \(data.lastName)")
        print("Email: \(data.email)")
        print("Phone: \(data.phone)")
        print("Address: \(data.address)")
        print("City: \(data.city)")
        print("ZIP: \(data.zipCode)")
        print("Country: \(data.country)")
        print("Company: \(data.company)")
        print("Job Title: \(data.jobTitle)")
        print("Bio: \(bioText)")
        print("Notes: \(notesText)")
        print("Comments: \(commentsText)")
        print("Agreed to terms: \(agreeToggleIsOn)")
    }
    
    func clearForm() {
        data.firstName = ""
        data.lastName = ""
        data.email = ""
        data.phone = ""
        data.address = ""
        data.city = ""
        data.zipCode = ""
        data.country = ""
        data.company = ""
        data.jobTitle = ""
        bioText = ""
        notesText = ""
        commentsText = ""
        agreeToggleIsOn = false
    }

    func toggleDynamicMode() {
        ViewSwitcher.toggleDynamicMode()
        data.dynamicModeStatus = ViewSwitcher.isDynamicMode ? "ON" : "OFF"
    }
}
