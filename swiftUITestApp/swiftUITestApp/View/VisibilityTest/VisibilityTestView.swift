import SwiftUI
import SwiftJsonUI
import Combine

struct VisibilityTestView: View {
    @StateObject private var viewModel = VisibilityTestViewModel()
    
    var body: some View {
        VisibilityTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct VisibilityTestView_Previews: PreviewProvider {
    static var previews: some View {
        VisibilityTestView()
    }
}
