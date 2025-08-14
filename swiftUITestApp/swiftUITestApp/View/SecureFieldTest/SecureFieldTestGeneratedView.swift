import SwiftUI
import SwiftJsonUI
import Combine

struct SecureFieldTestGeneratedView: View {
    @EnvironmentObject var viewModel: SecureFieldTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "secure_field_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "secure_field_test", viewId: "secure_field_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from secure_field_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
                Text("Regular TextField (not secure)")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.top, 30)
                TextField("Enter regular text", text: $viewModel.data.regularText)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .padding(10)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(8)
                    .padding(.top, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                )
                Text("Secure TextField (password)")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.top, 20)
                SecureField("Enter password", text: $viewModel.data.password)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .padding(10)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(8)
                    .padding(.top, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                )
                Text("Confirm Password (also secure)")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .padding(.top, 20)
                SecureField("Confirm password", text: $viewModel.data.confirmPassword)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .padding(10)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(8)
                    .padding(.top, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                )
                VStack(alignment: .leading, spacing: 0) {
                    Text("Values entered:")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                    Text("Regular: \(viewModel.data.regularText)")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 5)
                    Text("Password: [hidden]")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 5)
                    Text("Confirm: [hidden]")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 5)
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity)
                    .padding(15)
                    .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                    .cornerRadius(8)
                    .padding(.top, 30)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Spacer(minLength: 0)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.9725490196078431, blue: 0.9725490196078431))
            // >>> GENERATED_CODE_END
        }
    }
}
