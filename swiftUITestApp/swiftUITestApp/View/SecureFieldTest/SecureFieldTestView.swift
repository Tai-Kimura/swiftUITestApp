import SwiftUI
import SwiftJsonUI
import Combine

struct SecureFieldTestView: View {
    @StateObject private var viewModel = SecureFieldTestViewModel()
    
    var body: some View {
        SecureFieldTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct SecureFieldTestView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldTestView()
    }
}
