import SwiftUI
import SwiftJsonUI
import Combine

struct IncludeTestView: View {
    @StateObject private var viewModel: IncludeTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: IncludeTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = IncludeTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        IncludeTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct IncludeTestView_Previews: PreviewProvider {
    static var previews: some View {
        IncludeTestView()
    }
}
