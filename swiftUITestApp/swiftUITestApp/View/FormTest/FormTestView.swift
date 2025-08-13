import SwiftUI
import SwiftJsonUI
import Combine

struct FormTestView: View {
    @StateObject private var viewModel: FormTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: FormTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = FormTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        FormTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct FormTestView_Previews: PreviewProvider {
    static var previews: some View {
        FormTestView()
    }
}
