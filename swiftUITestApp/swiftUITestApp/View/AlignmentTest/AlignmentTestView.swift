import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentTestView: View {
    @StateObject private var viewModel = AlignmentTestViewModel()
    
    var body: some View {
        AlignmentTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct AlignmentTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentTestView()
    }
}
