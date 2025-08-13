import SwiftUI
import SwiftJsonUI
import Combine

struct SecureFieldTestView: View {
    @StateObject private var viewModel: SecureFieldTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: SecureFieldTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = SecureFieldTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        SecureFieldTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct SecureFieldTestView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldTestView()
    }
}
