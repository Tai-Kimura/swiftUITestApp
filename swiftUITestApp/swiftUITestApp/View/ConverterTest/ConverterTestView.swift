import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestView: View {
    @StateObject private var viewModel = ConverterTestViewModel()
    
    var body: some View {
        ConverterTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct ConverterTestView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterTestView()
    }
}
