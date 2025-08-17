import SwiftUI
import SwiftJsonUI
import Combine

struct Included2View: View {
    @StateObject private var viewModel: Included2ViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: Included2ViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = Included2ViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        Included2GeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct Included2View_Previews: PreviewProvider {
    static var previews: some View {
        Included2View()
    }
}
