import SwiftUI
import SwiftJsonUI
import Combine

struct IncludeTestGeneratedView: View {
    @EnvironmentObject var viewModel: IncludeTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "include_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "include_test", viewId: "include_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from include_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text("1. Basic Include (no parameters):")
                            .font(.system(size: 16))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        // include: included_1
                        Included1View()
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("2. Include with data (static values):")
                            .font(.system(size: 16))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        // include: included_2
                        Included2View(data: ["viewTitle": "Static Title", "viewStatus": "Static Status", "viewCount": 42])
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("3. Include with data (using @{} references):")
                            .font(.system(size: 16))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        // include: included_2
                        Included2View(data: ["viewTitle": viewModel.data.userName, "viewStatus": viewModel.data.mainStatus, "viewCount": viewModel.data.mainCount])
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("4. Include with shared_data and data override:")
                            .font(.system(size: 16))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        // include: included_2
                        Included2View(data: ["viewTitle": viewModel.data.userName, "viewStatus": "Overridden Status", "viewCount": viewModel.data.mainCount])
                        // shared_data: {"viewTitle"=>"@{userName}", "viewStatus"=>"@{mainStatus}", "viewCount"=>"@{mainCount}"}
                    }
                }
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .padding(20)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            // >>> GENERATED_CODE_END
        }
    }
}
