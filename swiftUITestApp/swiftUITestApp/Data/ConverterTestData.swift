import Foundation
import SwiftUI
import SwiftJsonUI

struct ConverterTestData {
    // Data properties from JSON
    var title: String = "Converter Components Test"
    var items: CollectionDataSource = CollectionDataSource()

    // Update properties from dictionary
    mutating func update(dictionary: [String: Any]) {
        if let value = dictionary["title"] {
            if let stringValue = value as? String {
                self.title = stringValue
            }
        }
        if let value = dictionary["items"] {
            if let typedValue = value as? CollectionDataSource {
                self.items = typedValue
            }
        }
    }
}
