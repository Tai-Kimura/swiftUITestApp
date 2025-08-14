import SwiftUI
import SwiftJsonUI
import Combine

struct TextViewHintTestView: View {
    @StateObject private var viewModel = TextViewHintTestViewModel()
    
    var body: some View {
        TextViewHintTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct TextViewHintTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextViewHintTestView()
    }
}
