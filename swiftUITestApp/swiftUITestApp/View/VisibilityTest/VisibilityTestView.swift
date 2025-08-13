import SwiftUI
import SwiftJsonUI
import Combine

struct VisibilityTestView: View {
    @StateObject private var viewModel: VisibilityTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: VisibilityTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = VisibilityTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VisibilityTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct VisibilityTestView_Previews: PreviewProvider {
    static var previews: some View {
        VisibilityTestView()
    }
}
