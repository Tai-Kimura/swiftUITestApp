import SwiftUI
import SwiftJsonUI
import Combine

struct ComponentsTestGeneratedView: View {
    @EnvironmentObject var viewModel: ComponentsTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "components_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "components_test", viewId: "components_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from components_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 0) {
                }
            }
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
                .padding(.top, 20)
                .padding(.trailing, 20)
                .padding(.bottom, 20)
                .padding(.leading, 20)
            // >>> GENERATED_CODE_END
        }
    }
}
