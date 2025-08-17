import SwiftUI
import SwiftJsonUI
import Combine

struct ButtonEnabledTestGeneratedView: View {
    @EnvironmentObject var viewModel: ButtonEnabledTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "button_enabled_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "button_enabled_test", viewId: "button_enabled_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from button_enabled_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Button(action: {
                    viewModel.toggleDynamicMode()
                }) {
                    Text("Dynamic: \(viewModel.data.dynamicModeStatus)")
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                }
                    .frame(height: 32)
                    .background(Color(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098))
                    .cornerRadius(6)
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                Text("Button enabled state: \(viewModel.data.isButtonEnabled)")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                Button(action: {
                    viewModel.testAction()
                }) {
                    Text("Test Button (controlled by data)")
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(10)
                }
                    .background(Color(red: 0.2980392156862745, green: 0.6862745098039216, blue: 0.3137254901960784))
                    .cornerRadius(5)
                    .disabled(!viewModel.data.isButtonEnabled)
                Button(action: {
                    viewModel.toggleEnabled()
                }) {
                    Text("Toggle Enabled State")
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(10)
                }
                    .background(Color(red: 0.12941176470588237, green: 0.5882352941176471, blue: 0.9529411764705882))
                    .cornerRadius(5)
                Button(action: {
                    viewModel.neverCalled()
                }) {
                    Text("Always Disabled Button")
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(10)
                }
                    .background(Color(red: 1.0, green: 0.3411764705882353, blue: 0.13333333333333333))
                    .cornerRadius(5)
                    .disabled(true)
                Button(action: {
                    viewModel.alwaysCalled()
                }) {
                    Text("Always Enabled Button")
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(10)
                }
                    .background(Color(red: 0.611764705882353, green: 0.15294117647058825, blue: 0.6901960784313725))
                    .cornerRadius(5)
                Spacer(minLength: 0)
            }
                .padding(20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
            // >>> GENERATED_CODE_END
        }
    }
}
