import SwiftUI
import SwiftJsonUI
import Combine

struct TextStylingTestView: View {
    @StateObject private var viewModel: TextStylingTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: TextStylingTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = TextStylingTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        TextStylingTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TextStylingTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextStylingTestView()
    }
}
