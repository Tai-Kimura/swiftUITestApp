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
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                Text("\(viewModel.data.message)")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.top, 8)
                HStack(alignment: .top, spacing: 0) {
                    Text("Count: ")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    Text("\(viewModel.data.count)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 12)
                Spacer(minLength: 0)
            }
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
                .cornerRadius(8)
            // >>> GENERATED_CODE_END
        }
    }
}
