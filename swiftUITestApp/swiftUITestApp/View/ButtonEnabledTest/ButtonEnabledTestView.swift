import SwiftUI
import SwiftJsonUI
import Combine

struct ButtonEnabledTestView: View {
    @StateObject private var viewModel: ButtonEnabledTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: ButtonEnabledTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = ButtonEnabledTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ButtonEnabledTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ButtonEnabledTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonEnabledTestView()
    }
}
