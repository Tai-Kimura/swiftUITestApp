import SwiftUI
import SwiftJsonUI
import Combine

struct FormTestView: View {
    @StateObject private var viewModel = FormTestViewModel()
    
    var body: some View {
        FormTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct FormTestView_Previews: PreviewProvider {
    static var previews: some View {
        FormTestView()
    }
}
