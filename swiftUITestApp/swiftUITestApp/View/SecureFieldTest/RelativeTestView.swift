import SwiftUI
import SwiftJsonUI
import Combine

struct RelativeTestView: View {
    @StateObject private var viewModel = RelativeTestViewModel()
    
    var body: some View {
        RelativeTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct RelativeTestView_Previews: PreviewProvider {
    static var previews: some View {
        RelativeTestView()
    }
}
