import Foundation
import SwiftUI
import SwiftJsonUI

struct FormTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var address: String = ""
    var agreeToTerms: Bool = false
    var bio: String = ""
    var city: String = ""
    var comments: String = ""
    var company: String = ""
    var country: String = ""
    var email: String = ""
    var firstName: String = ""
    var jobTitle: String = ""
    var lastName: String = ""
    var notes: String = ""
    var phone: String = ""
    var title: String = "Form & Keyboard Test"
    var zipCode: String = ""

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["address"] {
            if let stringValue = value as? String {
                self.address = stringValue
            }
        }
        if let value = dictionary["agreeToTerms"] {
            if let boolValue = value as? Bool {
                self.agreeToTerms = boolValue
            }
        }
        if let value = dictionary["bio"] {
            if let stringValue = value as? String {
                self.bio = stringValue
            }
        }
        if let value = dictionary["city"] {
            if let stringValue = value as? String {
                self.city = stringValue
            }
        }
        if let value = dictionary["comments"] {
            if let stringValue = value as? String {
                self.comments = stringValue
            }
        }
        if let value = dictionary["company"] {
            if let stringValue = value as? String {
                self.company = stringValue
            }
        }
        if let value = dictionary["country"] {
            if let stringValue = value as? String {
                self.country = stringValue
            }
        }
        if let value = dictionary["email"] {
            if let stringValue = value as? String {
                self.email = stringValue
            }
        }
        if let value = dictionary["firstName"] {
            if let stringValue = value as? String {
                self.firstName = stringValue
            }
        }
        if let value = dictionary["jobTitle"] {
            if let stringValue = value as? String {
                self.jobTitle = stringValue
            }
        }
        if let value = dictionary["lastName"] {
            if let stringValue = value as? String {
                self.lastName = stringValue
            }
        }
        if let value = dictionary["notes"] {
            if let stringValue = value as? String {
                self.notes = stringValue
            }
        }
        if let value = dictionary["phone"] {
            if let stringValue = value as? String {
                self.phone = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["zipCode"] {
            if let stringValue = value as? String {
                self.zipCode = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: FormTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["address"] = address
        dict["agreeToTerms"] = agreeToTerms
        dict["bio"] = bio
        dict["city"] = city
        dict["comments"] = comments
        dict["company"] = company
        dict["country"] = country
        dict["email"] = email
        dict["firstName"] = firstName
        dict["jobTitle"] = jobTitle
        dict["lastName"] = lastName
        dict["notes"] = notes
        dict["phone"] = phone
        dict["title"] = title
        dict["zipCode"] = zipCode
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["submitForm"] = { [weak viewModel] in viewModel?.submitForm() }
            dict["clearForm"] = { [weak viewModel] in viewModel?.clearForm() }
        }
        
        return dict
    }
}
