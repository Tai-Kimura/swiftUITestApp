import SwiftUI
import SwiftJsonUI
import Combine

struct DatePickerTestView: View {
    @StateObject private var viewModel: DatePickerTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: DatePickerTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = DatePickerTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
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
