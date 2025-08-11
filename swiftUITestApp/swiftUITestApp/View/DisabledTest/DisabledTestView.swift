import SwiftUI
import SwiftJsonUI
import Combine

struct DisabledTestView: View {
    @StateObject private var viewModel = DisabledTestViewModel()
    
    var body: some View {
        DisabledTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct DisabledTestView_Previews: PreviewProvider {
    static var previews: some View {
        DisabledTestView()
    }
}
