import SwiftUI
import SwiftJsonUI
import Combine

struct DisabledStateTestGeneratedView: View {
    @EnvironmentObject var viewModel: DisabledStateTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "disabled_state_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "disabled_state_test", viewId: "disabled_state_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from disabled_state_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack {
                Text(viewModel.title)
                    .font(.title)
                    .padding()
                
                Text("Run 'sjui build' to generate SwiftUI code")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // >>> GENERATED_CODE_END
        }
    }
}
