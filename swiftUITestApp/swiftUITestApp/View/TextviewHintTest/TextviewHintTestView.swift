import SwiftUI
import SwiftJsonUI
import Combine

struct TextViewHintTestView: View {
    @StateObject private var viewModel: TextViewHintTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: TextViewHintTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = TextViewHintTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        TextViewHintTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TextViewHintTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextViewHintTestView()
    }
}
