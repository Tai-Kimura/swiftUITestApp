import SwiftUI
import SwiftJsonUI
import Combine

struct DisabledTestGeneratedView: View {
    @EnvironmentObject var viewModel: DisabledTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "disabled_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "disabled_test", viewId: "disabled_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from disabled_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    Text("Enabled Button")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    Button(action: {
                        viewModel.onEnabledButtonTap()
                    }) {
                        Text("Enabled Button")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                    Text("Disabled Button")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    Button(action: {
                        viewModel.onDisabledButtonTap()
                    }) {
                        Text("Disabled Button")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    }
                        .disabled(true)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                        .disabled(true)
                    Text("TouchDisabledState Button")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    Button(action: {
                        viewModel.onTouchDisabledTap()
                    }) {
                        Text("Touch Disabled")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 0.5843137254901961, blue: 0.0))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                        .allowsHitTesting(false)
                    // touchDisabledState applied
                    Text("Enabled TextField")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    TextField("Enabled - can type here", text: $viewModel.data.textFieldValue)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(10)
                        .cornerRadius(8)
                        .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                    )
                    Text("Disabled TextField")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    TextField("Disabled - cannot type", text: .constant(""))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .disabled(true)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(10)
                        .cornerRadius(8)
                        .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                    )
                        .disabled(true)
                    Text("Dynamic Enable/Disable Test")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Button(action: {
                        viewModel.toggleEnableState()
                    }) {
                        Text("Toggle Enable State")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                    Button(action: {
                        viewModel.onDynamicButtonTap()
                    }) {
                        Text("Dynamic Button")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                    Text("Current state: \(viewModel.data.isEnabled)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 10)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.9725490196078431, blue: 0.9725490196078431))
            // >>> GENERATED_CODE_END
        }
    }
}
