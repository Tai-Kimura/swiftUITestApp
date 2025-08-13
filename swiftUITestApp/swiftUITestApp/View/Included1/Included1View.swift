import SwiftUI
import SwiftJsonUI
import Combine

struct Included1View: View {
    @StateObject private var viewModel: Included1ViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: Included1ViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = Included1ViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        Included1GeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct Included1View_Previews: PreviewProvider {
    static var previews: some View {
        Included1View()
    }
}
