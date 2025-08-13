import SwiftUI
import SwiftJsonUI
import Combine

struct WeightTestWithFixedView: View {
    @StateObject private var viewModel: WeightTestWithFixedViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: WeightTestWithFixedViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = WeightTestWithFixedViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        WeightTestWithFixedGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct WeightTestWithFixedView_Previews: PreviewProvider {
    static var previews: some View {
        WeightTestWithFixedView()
    }
}
