import SwiftUI
import SwiftJsonUI
import Combine

struct TableTestView: View {
    @StateObject private var viewModel: TableTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: TableTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = TableTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        TableTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TableTestView_Previews: PreviewProvider {
    static var previews: some View {
        TableTestView()
    }
}
