import Foundation
import SwiftUI
import SwiftJsonUI

struct IncludeTestData {
    // Data properties from JSON
    var dynamicModeStatus: String = "OFF"
    var mainCount: Int = 100
    var mainStatus: String = "Main Active"
    var title: String = "Include Component Test"
    var userName: String = "Test User"

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["dynamicModeStatus"] {
            if let stringValue = value as? String {
                self.dynamicModeStatus = stringValue
            }
        }
        if let value = dictionary["mainCount"] {
            if let intValue = value as? Int {
                self.mainCount = intValue
            }
        }
        if let value = dictionary["mainStatus"] {
            if let stringValue = value as? String {
                self.mainStatus = stringValue
            }
        }
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["userName"] {
            if let stringValue = value as? String {
                self.userName = stringValue
            }
        }
    }

    // Convert properties to dictionary for Dynamic mode
    func toDictionary(viewModel: IncludeTestViewModel? = nil) -> [String: Any] {
        var dict: [String: Any] = [:]
        
        // Data properties
        dict["dynamicModeStatus"] = dynamicModeStatus
        dict["mainCount"] = mainCount
        dict["mainStatus"] = mainStatus
        dict["title"] = title
        dict["userName"] = userName
        
        // Add onclick action closures if viewModel is provided
        if let viewModel = viewModel {
            dict["incrementCount"] = { [weak viewModel] in viewModel?.incrementCount() }
            dict["decrementCount"] = { [weak viewModel] in viewModel?.decrementCount() }
            dict["resetCount"] = { [weak viewModel] in viewModel?.resetCount() }
            dict["changeUserName"] = { [weak viewModel] in viewModel?.changeUserName() }
            dict["toggleStatus"] = { [weak viewModel] in viewModel?.toggleStatus() }
        }
        
        return dict
    }
}
