import SwiftUI
import SwiftJsonUI
import Combine

struct WidthTestView: View {
    @StateObject private var viewModel = WidthTestViewModel()
    
    var body: some View {
        WidthTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct WidthTestView_Previews: PreviewProvider {
    static var previews: some View {
        WidthTestView()
    }
}
