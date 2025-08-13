import SwiftUI
import SwiftJsonUI
import Combine

struct BindingTestView: View {
    @StateObject private var viewModel: BindingTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: BindingTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = BindingTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        BindingTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct BindingTestView_Previews: PreviewProvider {
    static var previews: some View {
        BindingTestView()
    }
}
