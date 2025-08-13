import SwiftUI
import SwiftJsonUI
import Combine

struct DisabledStateTestView: View {
    @StateObject private var viewModel: DisabledStateTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: DisabledStateTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = DisabledStateTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        DisabledStateTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct DisabledStateTestView_Previews: PreviewProvider {
    static var previews: some View {
        DisabledStateTestView()
    }
}
