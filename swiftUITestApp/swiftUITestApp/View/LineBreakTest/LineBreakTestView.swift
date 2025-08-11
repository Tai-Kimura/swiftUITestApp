import SwiftUI
import SwiftJsonUI
import Combine

struct LineBreakTestView: View {
    @StateObject private var viewModel = LineBreakTestViewModel()
    
    var body: some View {
        LineBreakTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct LineBreakTestView_Previews: PreviewProvider {
    static var previews: some View {
        LineBreakTestView()
    }
}
