import SwiftUI
import SwiftJsonUI
import Combine

struct ComponentsTestView: View {
    @StateObject private var viewModel: ComponentsTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: ComponentsTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = ComponentsTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ComponentsTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ComponentsTestView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsTestView()
    }
}
