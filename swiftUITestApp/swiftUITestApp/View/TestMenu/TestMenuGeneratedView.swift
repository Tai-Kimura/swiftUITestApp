import SwiftUI
import SwiftJsonUI
import Combine

struct TestMenuGeneratedView: View {
    @EnvironmentObject var viewModel: TestMenuViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "test_menu")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "test_menu", viewId: "test_menu_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from test_menu.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("SwiftJsonUI Feature Tests")
                            .font(.system(size: 28))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        HStack(alignment: .top, spacing: 0) {
                            Text("Dynamic Mode Status:")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                                .padding(.trailing, 10)
                            Text("\(viewModel.data.dynamicModeStatus ?? "OFF")")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                                .fontWeight(.bold)
                            Spacer(minLength: 0)
                        }
                            .padding(15)
                            .background(Color(red: 0.9098039215686274, green: 0.9568627450980393, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Layout & Positioning")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToMarginsTest()
                        }) {
                            Text("Margins & Padding Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToAlignmentTest()
                        }) {
                            Text("Alignment Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToAlignmentComboTest()
                        }) {
                            Text("Alignment Combo Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToWeightTest()
                        }) {
                            Text("Weight Distribution Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToWeightTestWithFixed()
                        }) {
                            Text("Weight + Fixed Size Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Style & Appearance")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToVisibilityTest()
                        }) {
                            Text("Visibility & Opacity Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToDisabledTest()
                        }) {
                            Text("Disabled States Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Text Features")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToTextStylingTest()
                        }) {
                            Text("Text Styling Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.5843137254901961, blue: 0.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToComponentsTest()
                        }) {
                            Text("New Components Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.5843137254901961, blue: 0.0))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToLineBreakTest()
                        }) {
                            Text("Line Break & Spacing Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.5843137254901961, blue: 0.0))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Input Components")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToSecureFieldTest()
                        }) {
                            Text("Secure Field Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToDatePickerTest()
                        }) {
                            Text("Date Picker Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToTextviewHintTest()
                        }) {
                            Text("TextView Hint Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.5568627450980392, green: 0.5568627450980392, blue: 0.5764705882352941))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Advanced Features")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToRelativeTest()
                        }) {
                            Text("Relative Positioning Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToBindingTest()
                        }) {
                            Text("Binding Properties Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToConverterTest()
                        }) {
                            Text("Converter Components Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Button(action: {
                            viewModel.navigateToIncludeTest()
                        }) {
                            Text("Include Component Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                        Text("Forms & Keyboard")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Button(action: {
                            viewModel.navigateToFormTest()
                        }) {
                            Text("Form & Keyboard Avoidance Test")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(15)
                        }
                            .background(Color(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098))
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                        Spacer(minLength: 0)
                    }
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            // >>> GENERATED_CODE_END
        }
    }
}
