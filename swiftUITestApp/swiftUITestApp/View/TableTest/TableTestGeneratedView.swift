import SwiftUI
import SwiftJsonUI
import Combine

struct TableTestGeneratedView: View {
    @EnvironmentObject var viewModel: TableTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "table_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "table_test", viewId: "table_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from table_test.json
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
