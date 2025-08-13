import SwiftUI
import SwiftJsonUI
import Combine

struct RelativeTestView: View {
    @StateObject private var viewModel: RelativeTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: RelativeTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = RelativeTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        RelativeTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct RelativeTestView_Previews: PreviewProvider {
    static var previews: some View {
        RelativeTestView()
    }
}
