import SwiftUI
import SwiftJsonUI
import Combine

struct MarginsTestGeneratedView: View {
    @EnvironmentObject var viewModel: MarginsTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "margins_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "margins_test", viewId: "margins_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from margins_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    Text("All margins: [20, 20, 20, 20]")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.top, 20)
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                    Text("Left margin: 40")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                        .padding(.top, 10)
                        .padding(.leading, 40)
                    Text("Right margin: 40")
                        .font(.system(size: 16))
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                        .padding(.top, 10)
                        .padding(.trailing, 40)
                    Text("Top margin: 30")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 1.0, blue: 0.8784313725490196))
                        .padding(.top, 30)
                    Text("Bottom margin: 30")
                        .font(.system(size: 16))
                        .background(Color(red: 1.0, green: 0.8784313725490196, blue: 1.0))
                        .padding(.bottom, 30)
                    ZStack(alignment: .center) {
                        Group {
                                        Text("Parent has leftPadding: 20, rightPadding: 20")
                                            .font(.system(size: 14))
                                .zIndex(0)
                        }
                    }
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.8666666666666667, green: 0.8666666666666667, blue: 0.8666666666666667))
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    ZStack(alignment: .center) {
                        Group {
                                        Text("MaxWidth: 200")
                                            .font(.system(size: 14))
                                            .frame(maxWidth: 200)
                                            .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                                .zIndex(0)
                        }
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                        .padding(.top, 20)
                    ZStack(alignment: .center) {
                        Group {
                                        Text("MinWidth: 150")
                                            .font(.system(size: 14))
                                            .frame(minWidth: 150)
                                            .background(Color(red: 0.8, green: 1.0, blue: 0.8))
                                .zIndex(0)
                        }
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color(red: 0.7333333333333333, green: 0.7333333333333333, blue: 0.7333333333333333))
                        .padding(.top, 20)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
