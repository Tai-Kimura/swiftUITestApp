import SwiftUI
import SwiftJsonUI
import Combine

struct BindingTestGeneratedView: View {
    @EnvironmentObject var viewModel: BindingTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "binding_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "binding_test", viewId: "binding_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from binding_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    Text("Text Binding")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    TextField("Enter text", text: $viewModel.data.textValue)
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
                    Text("You typed: \(viewModel.data.textValue)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                    Text("Counter Binding")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    GeometryReader { geometry in
                        HStack(alignment: .top, spacing: 0) {
                        Button(action: {
                            viewModel.decreaseCounter()
                        }) {
                            Text("Decrease")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        }
                            .frame(width: geometry.size.width * 0.5)
                            .frame(height: 44)
                            .background(Color(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706))
                            .padding(.trailing, 5)
                            .cornerRadius(8)
                        Text("\(viewModel.data.counter)")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .multilineTextAlignment(.center)
                            .frame(width: 100, height: 44)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .cornerRadius(8)
                        Button(action: {
                            viewModel.increaseCounter()
                        }) {
                            Text("Increase")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        }
                            .frame(width: geometry.size.width * 0.5)
                            .frame(height: 44)
                            .background(Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724))
                            .padding(.leading, 5)
                            .cornerRadius(8)
                        }
                    }
                        .frame(maxWidth: .infinity)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Toggle Binding")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Toggle(isOn: $viewModel.data.toggleValue) {
                        Text("")
                    }
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .onTapGesture {
                        viewModel.toggleChanged()
                    }
                    Text("Toggle is: \(viewModel.data.toggleValue)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                    Text("ON/OFF")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenter, targetId: ""),
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .topLeading,
                        backgroundColor: Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                    Text("Slider Binding")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Slider(value: $viewModel.data.sliderValue, in: 0...100)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Slider value: \(viewModel.data.sliderValue)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                    Rectangle()
                        .fill(Color(red: 0.0, green: 0.47843137254901963, blue: 1.0))
                        .frame(width: 100)
                        .frame(maxHeight: .infinity)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(10)
                    Text("SelectBox Binding")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    SelectBoxView(
                        id: "option_select",
                        backgroundColor: Color(red: 1.0, green: 1.0, blue: 1.0),
                        cornerRadius: 8,
                        selectItemType: .normal,
                        items: ["Option 1", "Option 2", "Option 3", "Option 4"]
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .cornerRadius(8)
                        .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.8, green: 0.8, blue: 0.8), lineWidth: 1)
                    )
                    Text("Selected: \(viewModel.data.selectedOption)")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 10)
                        .padding(.bottom, 30)
                        .padding(.leading, 20)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.9725490196078431, blue: 0.9725490196078431))
            // >>> GENERATED_CODE_END
        }
    }
}
