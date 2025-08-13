import SwiftUI
import SwiftJsonUI
import Combine

struct RelativePositionTestView: View {
    @StateObject private var viewModel: RelativePositionTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: RelativePositionTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = RelativePositionTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        RelativePositionTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct RelativePositionTestView_Previews: PreviewProvider {
    static var previews: some View {
        RelativePositionTestView()
    }
}
