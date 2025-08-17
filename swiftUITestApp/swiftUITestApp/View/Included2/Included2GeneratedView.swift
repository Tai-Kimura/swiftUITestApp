import SwiftUI
import SwiftJsonUI
import Combine

struct Included2GeneratedView: View {
    @EnvironmentObject var viewModel: Included2ViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "included2")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "included2", viewId: "included2_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from included2.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("Included View 2")
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text("Title: \(viewModel.data.viewTitle)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    Text("Status: \(viewModel.data.viewStatus)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    Text("Count: \(viewModel.data.viewCount)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    Spacer(minLength: 0)
                }
                    .padding(10)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(5)
                Spacer(minLength: 0)
            }
                .padding(15)
                .background(Color(red: 1.0, green: 0.9568627450980393, blue: 0.9019607843137255))
                .cornerRadius(10)
            // >>> GENERATED_CODE_END
        }
    }
}
