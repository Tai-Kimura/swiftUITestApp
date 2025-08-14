import SwiftUI
import SwiftJsonUI
import Combine

struct VisibilityTestGeneratedView: View {
    @EnvironmentObject var viewModel: VisibilityTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "visibility_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "visibility_test", viewId: "visibility_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from visibility_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    VisibilityWrapper("visible") {
                        Text("Visibility: visible (default)")
                            .font(.system(size: 16))
                            .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                            .padding(.top, 20)
                    }
                    VisibilityWrapper("invisible") {
                        Text("This label is invisible (takes space)")
                            .font(.system(size: 16))
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                            .padding(.top, 10)
                    }
                    Text("After invisible label")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                        .padding(.top, 10)
                    VisibilityWrapper("gone") {
                        Text("This label is gone (no space)")
                            .font(.system(size: 16))
                            .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                            .padding(.top, 10)
                    }
                    Text("After gone label (no gap)")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                        .padding(.top, 10)
                    Text("Opacity Tests")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    Text("Opacity: 1.0 (fully visible)")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .opacity(1.0)
                    Text("Opacity: 0.7")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .opacity(0.7)
                    Text("Opacity: 0.5")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                        .padding(.top, 10)
                        .opacity(0.5)
                    Text("Opacity: 0.3")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 1.0, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .opacity(0.3)
                    Text("Opacity: 0.1")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                        .padding(.top, 10)
                        .opacity(0.1)
                    Text("Alpha Test (same as opacity)")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    Text("Alpha: 0.6")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 1.0))
                        .padding(.top, 10)
                        .opacity(0.6)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.9725490196078431, blue: 0.9725490196078431))
            // >>> GENERATED_CODE_END
        }
    }
}
