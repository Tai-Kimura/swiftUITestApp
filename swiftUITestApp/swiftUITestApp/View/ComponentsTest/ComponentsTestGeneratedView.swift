import SwiftUI
import SwiftJsonUI
import Combine

struct ComponentsTestGeneratedView: View {
    @EnvironmentObject var viewModel: ComponentsTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "components_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "components_test", viewId: "components_test_view")
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
                    Toggle(isOn: $viewModel.toggle1IsOn) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $viewModel.checkbox1IsOn) {
                        Text("I agree to terms")
                    }
                    Text("Progress & Slider")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    ProgressView(value: progress1Value)
                    Slider(value: $sliderValueslider1, in: 0...1)
                    Text("Selection Components")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Picker("", selection: $selectedSegment1) {
                        Text("List").tag(0)
                        Text("Grid").tag(1)
                        Text("Map").tag(2)
                    }
                        .pickerStyle(.segmented)
                    HStack {
                        Image(systemName: selectedDefaultgroup == "radio1" ? "largecircle.fill.circle" : "circle")
                            .foregroundColor(.blue)
                            .onTapGesture {
                            selectedDefaultgroup = "radio1"
                        }
                        Text("Select Size")
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
                        .frame(width: fill, height: 100)
                        .cornerRadius(10)
                    Text("Blur View")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    Color.clear
                        .background(.ultraThinMaterial)
                        .frame(width: fill, height: 80)
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
