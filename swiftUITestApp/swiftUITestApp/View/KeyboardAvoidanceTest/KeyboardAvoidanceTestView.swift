import SwiftUI
import SwiftJsonUI
import Combine

struct KeyboardAvoidanceTestView: View {
    @StateObject private var viewModel: KeyboardAvoidanceTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: KeyboardAvoidanceTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = KeyboardAvoidanceTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        KeyboardAvoidanceTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct KeyboardAvoidanceTestView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAvoidanceTestView()
    }
}
