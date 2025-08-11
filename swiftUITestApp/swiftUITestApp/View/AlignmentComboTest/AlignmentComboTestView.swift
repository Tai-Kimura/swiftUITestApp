import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentComboTestView: View {
    @StateObject private var viewModel = AlignmentComboTestViewModel()
    
    var body: some View {
        AlignmentComboTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct AlignmentComboTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentComboTestView()
    }
}
