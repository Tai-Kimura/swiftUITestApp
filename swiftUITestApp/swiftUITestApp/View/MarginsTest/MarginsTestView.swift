import SwiftUI
import SwiftJsonUI
import Combine

struct MarginsTestView: View {
    @StateObject private var viewModel = MarginsTestViewModel()
    
    var body: some View {
        MarginsTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct MarginsTestView_Previews: PreviewProvider {
    static var previews: some View {
        MarginsTestView()
    }
}
