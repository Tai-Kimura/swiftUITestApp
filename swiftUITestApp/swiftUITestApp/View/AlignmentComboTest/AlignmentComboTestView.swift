import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentComboTestView: View {
    @StateObject private var viewModel: AlignmentComboTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: AlignmentComboTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = AlignmentComboTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        AlignmentComboTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct AlignmentComboTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentComboTestView()
    }
}
