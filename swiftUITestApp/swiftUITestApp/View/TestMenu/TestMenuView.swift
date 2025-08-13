import SwiftUI
import SwiftJsonUI
import Combine

struct TestMenuView: View {
    @StateObject private var viewModel: TestMenuViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: TestMenuViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = TestMenuViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        TestMenuGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TestMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TestMenuView()
    }
}
