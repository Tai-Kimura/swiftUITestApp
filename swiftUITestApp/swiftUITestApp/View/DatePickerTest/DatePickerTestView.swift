import SwiftUI
import SwiftJsonUI
import Combine

struct DatePickerTestView: View {
    @StateObject private var viewModel = DatePickerTestViewModel()
    
    var body: some View {
        DatePickerTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct DatePickerTestView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTestView()
    }
}
