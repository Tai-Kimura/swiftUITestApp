import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestCellView: View {
    @StateObject private var viewModel: ConverterTestCellViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: ConverterTestCellViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = ConverterTestCellViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ConverterTestCellGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ConverterTestCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterTestCellView()
    }
}
