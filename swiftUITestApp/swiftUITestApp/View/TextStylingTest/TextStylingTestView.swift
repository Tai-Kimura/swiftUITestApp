import SwiftUI
import SwiftJsonUI
import Combine

struct TextStylingTestView: View {
    @StateObject private var viewModel = TextStylingTestViewModel()
    
    var body: some View {
        TextStylingTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TextStylingTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextStylingTestView()
    }
}
