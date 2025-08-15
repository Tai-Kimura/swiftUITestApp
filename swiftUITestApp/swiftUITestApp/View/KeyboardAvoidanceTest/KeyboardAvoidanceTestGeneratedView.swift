import SwiftUI
import SwiftJsonUI
import Combine

struct KeyboardAvoidanceTestGeneratedView: View {
    @EnvironmentObject var viewModel: KeyboardAvoidanceTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "keyboard_avoidance_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "keyboard_avoidance_test", viewId: "keyboard_avoidance_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from keyboard_avoidance_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("\(viewModel.data.title)")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.bottom, 20)
                        Text("TextField 1")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextField("Enter text here", text: $viewModel.data.textField1)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .padding(12)
                            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 16)
                        Text("TextField 2")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextField("Another text field", text: $viewModel.data.textField2)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .padding(12)
                            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 16)
                        Text("TextField 3")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextField("Keep typing...", text: $viewModel.data.textField3)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .padding(12)
                            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 16)
                        Text("TextField 4")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextField("This should scroll up", text: $viewModel.data.textField4)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .padding(12)
                            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 16)
                        Text("TextField 5 (at bottom)")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextField("This is near the bottom", text: $viewModel.data.textField5)
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .padding(12)
                            .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 16)
                        Text("TextView (Multi-line)")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.bottom, 8)
                        TextViewWithPlaceholder(
                            text: $viewModel.data.textView,
                            hint: "Multi-line text input\nType here...",
                            hintColor: Color(red: 0.6, green: 0.6, blue: 0.6),
                            fontSize: 16,
                            fontColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                            backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                            cornerRadius: 8
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 120)
                            .padding(12)
                            .padding(.bottom, 16)
                        Button(action: {
                            viewModel.submitForm()
                        }) {
                            Text("Submit")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                        Spacer(minLength: 0)
                    }
                        .frame(maxWidth: .infinity)
                        .padding(16)
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
