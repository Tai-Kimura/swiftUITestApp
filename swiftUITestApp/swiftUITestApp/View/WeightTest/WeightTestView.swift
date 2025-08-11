import SwiftUI
import SwiftJsonUI
import Combine

struct WeightTestView: View {
    @StateObject private var viewModel = WeightTestViewModel()
    
    var body: some View {
        WeightTestGeneratedView()
            .environmentObject(viewModel)
            // Add navigation destinations, sheets, or other view-level modifiers here
    }
}

// MARK: - Preview
struct WeightTestView_Previews: PreviewProvider {
    static var previews: some View {
        WeightTestView()
    }
}
