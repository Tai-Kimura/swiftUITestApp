import SwiftUI
import SwiftJsonUI
import Combine

struct LineBreakTestView: View {
    @StateObject private var viewModel: LineBreakTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: LineBreakTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = LineBreakTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        LineBreakTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct LineBreakTestView_Previews: PreviewProvider {
    static var previews: some View {
        LineBreakTestView()
    }
}
