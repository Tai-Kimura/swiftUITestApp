import SwiftUI
import SwiftJsonUI
import Combine

struct WeightTestView: View {
    @StateObject private var viewModel: WeightTestViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: WeightTestViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = WeightTestViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        WeightTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct WeightTestView_Previews: PreviewProvider {
    static var previews: some View {
        WeightTestView()
    }
}
