import SwiftUI
import SwiftJsonUI
import Combine

struct BindingTestView: View {
    @StateObject private var viewModel = BindingTestViewModel()
    
    var body: some View {
        BindingTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct BindingTestView_Previews: PreviewProvider {
    static var previews: some View {
        BindingTestView()
    }
}
