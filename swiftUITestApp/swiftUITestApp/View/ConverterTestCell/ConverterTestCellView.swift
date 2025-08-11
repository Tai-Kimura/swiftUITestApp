import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestCellView: View {
    @StateObject private var viewModel: ConverterTestCellViewModel
    
    init(data: Any) {
        let vm = ConverterTestCellViewModel()
        vm.setData(data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        ConverterTestCellGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ConverterTestCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterTestCellView(data: [
            "title": "Preview Item",
            "subtitle": "Preview Description"
        ])
    }
}
