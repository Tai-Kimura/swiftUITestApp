import SwiftUI
import SwiftJsonUI
import Combine

struct MarginsTestView: View {
    @StateObject private var viewModel: MarginsTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: MarginsTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = MarginsTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        MarginsTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct MarginsTestView_Previews: PreviewProvider {
    static var previews: some View {
        MarginsTestView()
    }
}
