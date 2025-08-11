import SwiftUI
import SwiftJsonUI
import Combine

struct KeyboardAvoidanceTestGeneratedView: View {
    @EnvironmentObject var viewModel: KeyboardAvoidanceTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "keyboard_avoidance_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "keyboard_avoidance_test", viewId: "keyboard_avoidance_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from keyboard_avoidance_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ScrollView(.vertical, showsIndicators: true) {
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
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Text("TextField 2")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 8)
                    TextField("Another text field", text: $viewModel.data.textField2)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Text("TextField 3")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 8)
                    TextField("Keep typing...", text: $viewModel.data.textField3)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Text("TextField 4")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 8)
                    TextField("This should scroll up", text: $viewModel.data.textField4)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Text("TextField 5 (at bottom)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 8)
                    TextField("This is near the bottom", text: $viewModel.data.textField5)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Text("TextView (Multi-line)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 8)
                    TextViewWithPlaceholder(
                        text: $viewModel.textviewText,
                        hint: "Multi-line text input\nType here...",
                        hintColor: Color(red: 0.6, green: 0.6, blue: 0.6),
                        fontSize: 16,
                        fontColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                        backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                        cornerRadius: 8
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(12)
                        .cornerRadius(8)
                    Button(action: {
                        viewModel.submitForm()
                    }) {
                        Text("Submit")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .font(.system(size: 18))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .cornerRadius(8)
                }
                    .frame(maxWidth: .infinity)
                    .padding(16)
            }
                .keyboardAvoidance()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
