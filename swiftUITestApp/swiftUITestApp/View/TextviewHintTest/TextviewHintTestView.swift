import SwiftUI
import SwiftJsonUI
import Combine

struct TextviewHintTestView: View {
    @StateObject private var viewModel = TextviewHintTestViewModel()
    
    var body: some View {
        TextviewHintTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TextviewHintTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextviewHintTestView()
    }
}
