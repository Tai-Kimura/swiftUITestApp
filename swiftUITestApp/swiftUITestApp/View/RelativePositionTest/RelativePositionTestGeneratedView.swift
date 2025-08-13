import SwiftUI
import SwiftJsonUI
import Combine

struct RelativePositionTestGeneratedView: View {
    @EnvironmentObject var viewModel: RelativePositionTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "relative_position_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "relative_position_test", viewId: "relative_position_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from relative_position_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
            // >>> GENERATED_CODE_END
        }
    }
}
