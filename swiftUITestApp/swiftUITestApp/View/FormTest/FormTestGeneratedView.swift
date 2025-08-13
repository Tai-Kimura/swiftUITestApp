import SwiftUI
import SwiftJsonUI
import Combine

struct FormTestGeneratedView: View {
    @EnvironmentObject var viewModel: FormTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "form_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "form_test", viewId: "form_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from form_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 28))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.bottom, 24)
                    Text("Personal Information")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.bottom, 16)
                    Text("First Name")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("Enter your first name", text: $viewModel.data.firstName)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Last Name")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("Enter your last name", text: $viewModel.data.lastName)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Email Address")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("email@example.com", text: $viewModel.data.email)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Phone Number")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("+1 234 567 8900", text: $viewModel.data.phone)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 24)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Address Information")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.bottom, 16)
                    Text("Street Address")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("123 Main Street", text: $viewModel.data.address)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("City")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("New York", text: $viewModel.data.city)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("ZIP Code")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("10001", text: $viewModel.data.zipCode)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Country")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("United States", text: $viewModel.data.country)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 24)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Professional Information")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.bottom, 16)
                    Text("Company")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("Company Name", text: $viewModel.data.company)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Job Title")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextField("Software Engineer", text: $viewModel.data.jobTitle)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 24)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Additional Information")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.bottom, 16)
                    Text("Bio (Flexible Height)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextViewWithPlaceholder(
                        text: $viewModel.bioText,
                        hint: "Tell us about yourself...\nThis field will grow as you type",
                        hintColor: Color(red: 0.6, green: 0.6, blue: 0.6),
                        fontSize: 16,
                        fontColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                        backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                        cornerRadius: 10,
                        flexible: true,
                        minHeight: 80,
                        maxHeight: 200
                    )
                        .frame(minHeight: 80, maxHeight: 200)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Notes (Fixed Height)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextViewWithPlaceholder(
                        text: $viewModel.notesText,
                        hint: "Additional notes...\nFixed height field",
                        hintColor: Color(red: 0.6666666666666666, green: 0.6666666666666666, blue: 0.6666666666666666),
                        hideOnFocused: false,
                        fontSize: 16,
                        fontColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                        backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                        cornerRadius: 10
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 16)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    Text("Comments (Very Flexible)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.bottom, 6)
                    TextViewWithPlaceholder(
                        text: $viewModel.commentsText,
                        hint: "Any comments?\nThis can grow very tall (up to 300pt)",
                        hintColor: Color(red: 0.7333333333333333, green: 0.7333333333333333, blue: 0.7333333333333333),
                        // hintAttributes: {"fontColor":"#BBBBBB","fontSize":14,"fontStyle":"italic"}
                        fontSize: 16,
                        fontColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                        backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                        cornerRadius: 10,
                        flexible: true,
                        minHeight: 60,
                        maxHeight: 300
                    )
                        .frame(minHeight: 60, maxHeight: 300)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 24)
                        .padding(14)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196), lineWidth: 1)
                    )
                    HStack(alignment: .top, spacing: 0) {
                        Toggle(isOn: $viewModel.agreeToggleIsOn) {
                            Text("")
                        }
                            .padding(.trailing, 12)
                        Text("I agree to the Terms and Conditions")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 24)
                    Button(action: {
                        viewModel.submitForm()
                    }) {
                        Text("Submit Form")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .font(.system(size: 18))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 54)
                        .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.bottom, 16)
                        .cornerRadius(12)
                    Button(action: {
                        viewModel.clearForm()
                    }) {
                        Text("Clear All Fields")
                            .foregroundColor(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .font(.system(size: 18))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 54)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.bottom, 40)
                        .cornerRadius(12)
                        .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706), lineWidth: 2)
                    )
                }
                    .frame(maxWidth: .infinity)
                    .padding(16)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
            // >>> GENERATED_CODE_END
        }
    }
}
