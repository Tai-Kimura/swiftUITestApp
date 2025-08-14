import SwiftUI
import SwiftJsonUI
import Combine

struct TextViewHintTestGeneratedView: View {
    @EnvironmentObject var viewModel: TextViewHintTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "text_view_hint_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "text_view_hint_test", viewId: "text_view_hint_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from text_view_hint_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("TextView Hint Test")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.bottom, 20)
                Text("Simple TextView with hint:")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.bottom, 8)
                TextViewWithPlaceholder(
                    text: $viewModel.data.simpleText,
                    hint: "This is a simple hint",
                    hintColor: Color(red: 1.0, green: 0.0, blue: 0.0),
                    fontSize: 16,
                    fontColor: Color(red: 0.0, green: 0.0, blue: 0.0),
                    backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                    cornerRadius: 8,
                    containerInset: EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
                )
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                Text("Flexible TextView with multi-line hint:")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.bottom, 8)
                TextViewWithPlaceholder(
                    text: $viewModel.data.flexibleText,
                    hint: "Multi-line hint\nLine 2 of hint\nLine 3 of hint",
                    hintColor: Color(red: 0.0, green: 0.0, blue: 1.0),
                    fontSize: 16,
                    fontColor: Color(red: 0.0, green: 0.0, blue: 0.0),
                    backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                    cornerRadius: 8,
                    containerInset: EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12),
                    flexible: true,
                    minHeight: 80,
                    maxHeight: 200
                )
                    .frame(minHeight: 80, maxHeight: 200)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                Spacer(minLength: 0)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
