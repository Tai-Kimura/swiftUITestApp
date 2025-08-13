import SwiftUI
import SwiftJsonUI
import Combine

struct DisabledTestView: View {
    @StateObject private var viewModel: DisabledTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: DisabledTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = DisabledTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        DisabledTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct DisabledTestView_Previews: PreviewProvider {
    static var previews: some View {
        DisabledTestView()
    }
}
