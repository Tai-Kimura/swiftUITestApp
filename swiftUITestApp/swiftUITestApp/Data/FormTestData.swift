import Foundation
import SwiftUI
import SwiftJsonUI

struct FormTestData {
    // Data properties from JSON
    var title: String = "Form & Keyboard Test"
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var phone: String = ""
    var address: String = ""
    var city: String = ""
    var zipCode: String = ""
    var country: String = ""
    var company: String = ""
    var jobTitle: String = ""
    var bio: String = ""
    var notes: String = ""
    var comments: String = ""
    var agreeToTerms: Bool = false

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["firstName"] {
            if let stringValue = value as? String {
                self.firstName = stringValue
            }
        }
        if let value = dictionary["lastName"] {
            if let stringValue = value as? String {
                self.lastName = stringValue
            }
        }
        if let value = dictionary["email"] {
            if let stringValue = value as? String {
                self.email = stringValue
            }
        }
        if let value = dictionary["phone"] {
            if let stringValue = value as? String {
                self.phone = stringValue
            }
        }
        if let value = dictionary["address"] {
            if let stringValue = value as? String {
                self.address = stringValue
            }
        }
        if let value = dictionary["city"] {
            if let stringValue = value as? String {
                self.city = stringValue
            }
        }
        if let value = dictionary["zipCode"] {
            if let stringValue = value as? String {
                self.zipCode = stringValue
            }
        }
        if let value = dictionary["country"] {
            if let stringValue = value as? String {
                self.country = stringValue
            }
        }
        if let value = dictionary["company"] {
            if let stringValue = value as? String {
                self.company = stringValue
            }
        }
        if let value = dictionary["jobTitle"] {
            if let stringValue = value as? String {
                self.jobTitle = stringValue
            }
        }
        if let value = dictionary["bio"] {
            if let stringValue = value as? String {
                self.bio = stringValue
            }
        }
        if let value = dictionary["notes"] {
            if let stringValue = value as? String {
                self.notes = stringValue
            }
        }
        if let value = dictionary["comments"] {
            if let stringValue = value as? String {
                self.comments = stringValue
            }
        }
        if let value = dictionary["agreeToTerms"] {
            if let boolValue = value as? Bool {
                self.agreeToTerms = boolValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: FormTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["title"] = title
        dict["firstName"] = firstName
        dict["lastName"] = lastName
        dict["email"] = email
        dict["phone"] = phone
        dict["address"] = address
        dict["city"] = city
        dict["zipCode"] = zipCode
        dict["country"] = country
        dict["company"] = company
        dict["jobTitle"] = jobTitle
        dict["bio"] = bio
        dict["notes"] = notes
        dict["comments"] = comments
        dict["agreeToTerms"] = agreeToTerms
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["submitForm"] = { [weak viewModel] in viewModel?.submitForm() }
            dict["clearForm"] = { [weak viewModel] in viewModel?.clearForm() }
        }
        
        return dict
    }
}
