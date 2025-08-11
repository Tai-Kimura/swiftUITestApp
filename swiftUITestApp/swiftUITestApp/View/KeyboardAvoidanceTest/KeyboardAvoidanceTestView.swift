import SwiftUI
import SwiftJsonUI
import Combine

struct KeyboardAvoidanceTestView: View {
    @StateObject private var viewModel = KeyboardAvoidanceTestViewModel()
    
    var body: some View {
        KeyboardAvoidanceTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct KeyboardAvoidanceTestView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAvoidanceTestView()
    }
}
