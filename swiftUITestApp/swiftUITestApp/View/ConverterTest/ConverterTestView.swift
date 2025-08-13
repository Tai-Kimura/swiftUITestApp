import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestView: View {
    @StateObject private var viewModel: ConverterTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: ConverterTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = ConverterTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ConverterTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ConverterTestView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterTestView()
    }
}
