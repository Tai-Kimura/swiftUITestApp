import SwiftUI
import SwiftJsonUI
import Combine

struct Included1GeneratedView: View {
    @EnvironmentObject var viewModel: Included1ViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "included1")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "included1", viewId: "included1_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from included1.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
                Spacer(minLength: 0)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
            // >>> GENERATED_CODE_END
        }
    }
}
