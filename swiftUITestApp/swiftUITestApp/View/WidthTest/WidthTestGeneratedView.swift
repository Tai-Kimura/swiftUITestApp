import SwiftUI
import SwiftJsonUI
import Combine

struct WidthTestGeneratedView: View {
    @EnvironmentObject var viewModel: WidthTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "width_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "width_test", viewId: "width_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from width_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ZStack(alignment: .topLeading) {
                Group {
                        Button(action: {
                            viewModel.toggleDynamicMode()
                        }) {
                            Text("Dynamic: \(viewModel.data.dynamicModeStatus)")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                        }
                            .frame(height: 32)
                            .background(Color(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098))
                            .cornerRadius(6)
                        .zIndex(0)
                }
                Group {
                        Text("Width Test")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.top, 20)
                        .offset(x: 0, y: 20)
                        .zIndex(1)
                }
                Group {
                        Text("matchParent width")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                            .padding(.top, 20)
                        .offset(x: 0, y: 20)
                        .zIndex(2)
                }
                Group {
                        Text("Fixed width 200")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .multilineTextAlignment(.center)
                            .frame(width: 200, height: 50)
                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                            .padding(.top, 10)
                        .offset(x: 0, y: 10)
                        .zIndex(3)
                }
                Group {
                        Text("wrapContent width")
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .multilineTextAlignment(.center)
                            .frame(height: 50)
                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                            .padding(.top, 10)
                        .offset(x: 0, y: 10)
                        .zIndex(4)
                }
                Group {
                        WeightedHStack(alignment: .top, spacing: 0, children: [
                            (
                              view: AnyView(
                                Text("Weight 1")
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .frame(maxHeight: .infinity)
                                .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                              ),
                              weight: 1.0
                            ),
                            (
                              view: AnyView(
                                Text("Weight 2 (wrap)")
                                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                              ),
                              weight: 2.0
                            ),
                            (
                              view: AnyView(
                                Text("Weight 1")
                                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .frame(maxHeight: .infinity)
                                .background(Color(red: 0.8745098039215686, green: 0.9019607843137255, blue: 0.9137254901960784))
                              ),
                              weight: 1.0
                            )
                        ])
                            .frame(maxWidth: .infinity)
                            .frame(height: 100)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(.top, 20)
                        .offset(x: 0, y: 20)
                        .zIndex(5)
                }
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
