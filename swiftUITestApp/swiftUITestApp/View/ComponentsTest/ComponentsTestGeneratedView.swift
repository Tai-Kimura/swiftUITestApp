import SwiftUI
import SwiftJsonUI
import Combine

struct ComponentsTestGeneratedView: View {
    @EnvironmentObject var viewModel: ComponentsTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "components_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "components_test", viewId: "components_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from components_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("New Components Test")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    Text("Toggle/Checkbox Components")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Toggle(isOn: $viewModel.data.toggle1IsOn) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $viewModel.data.checkbox1IsOn) {
                        Text("I agree to terms")
                    }
                    Text("Progress & Slider")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    ProgressView(value: viewModel.data.progress1Value)
                    Slider(value: $viewModel.data.slider1Value, in: 0...1)
                    Text("Selection Components")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Picker("", selection: $viewModel.data.selectedSegment1) {
                        Text("List").tag(0)
                        Text("Grid").tag(1)
                        Text("Map").tag(2)
                    }
                        .pickerStyle(.segmented)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Select Size")
                        HStack {
                            Image(systemName: viewModel.data.selectedRadio1 == "Small" ? "largecircle.fill.circle" : "circle")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                viewModel.data.selectedRadio1 = "Small"
                            }
                            Text("Small")
                        }
                        HStack {
                            Image(systemName: viewModel.data.selectedRadio1 == "Medium" ? "largecircle.fill.circle" : "circle")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                viewModel.data.selectedRadio1 = "Medium"
                            }
                            Text("Medium")
                        }
                        HStack {
                            Image(systemName: viewModel.data.selectedRadio1 == "Large" ? "largecircle.fill.circle" : "circle")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                viewModel.data.selectedRadio1 = "Large"
                            }
                            Text("Large")
                        }
                    }
                    Text("Loading Indicator")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    ProgressView()
                    Text("Circle Image")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                    Text("Gradient View")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Color.clear
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .cornerRadius(10)
                    Text("Blur View")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Color.clear
                        .background(.ultraThinMaterial)
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .cornerRadius(10)
                }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                    .padding(.leading, 20)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
