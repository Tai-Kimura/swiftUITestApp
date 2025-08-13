import SwiftUI
import SwiftJsonUI
import Combine

struct StackAlignmentTestView: View {
    @StateObject private var viewModel: StackAlignmentTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: StackAlignmentTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = StackAlignmentTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        StackAlignmentTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct StackAlignmentTestView_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignmentTestView()
    }
}
