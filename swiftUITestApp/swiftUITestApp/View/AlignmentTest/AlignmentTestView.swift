import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentTestView: View {
    @StateObject private var viewModel: AlignmentTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: AlignmentTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = AlignmentTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        AlignmentTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct AlignmentTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentTestView()
    }
}
