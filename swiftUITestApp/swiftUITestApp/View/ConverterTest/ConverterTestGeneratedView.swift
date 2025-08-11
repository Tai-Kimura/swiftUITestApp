import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestGeneratedView: View {
    @EnvironmentObject var viewModel: ConverterTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "converter_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "converter_test", viewId: "converter_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from converter_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    Text("GradientView Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 10)
                    Text("Diagonal Gradient")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .background(LinearGradient(colors: [Color(red: 1.0, green: 0.0, blue: 0.0), Color(red: 0.0, green: 1.0, blue: 0.0), Color(red: 0.0, green: 0.0, blue: 1.0)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .padding(.top, 10)
                    Text("BlurView Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                    RelativePositionContainer(
                                        children: [
                                            RelativeChildConfig(
                                                id: "view_0",
                                                view: AnyView(
                                                    Text("BACKGROUND TEXT")
                                                        .font(.system(size: 24))
                                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                                ),
                                                constraints: [
                                                    RelativePositionConstraint(type: .parentCenter, targetId: ""),
                                                ],
                                                margins: .init()
                                            ),
                                            RelativeChildConfig(
                                                id: "view_1",
                                                view: AnyView(
                                                    Text("This will be blurred")
                                                        .font(.system(size: 16))
                                                        .foregroundColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0))
                                                        .padding(.top, 50)
                                                        .padding(.leading, 20)
                                                ),
                                                constraints: [],
                                                margins: EdgeInsets(top: 50, leading: 20, bottom: 0, trailing: 0)
                                            )
                                        ],
                                        alignment: .topLeading,
                                        backgroundColor: nil
                                    )
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                ),
                                constraints: [],
                                margins: .init()
                            ),
                            RelativeChildConfig(
                                id: "view_1",
                                view: AnyView(
                                    Text("Clear Text on Blur Layer")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .background(.ultraThinMaterial)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 60)
                                        .background(Color(red: 0.0, green: 0.0, blue: 0.2, opacity: 0.0))
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenter, targetId: ""),
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .topLeading,
                        backgroundColor: Color(red: 0.2980392156862745, green: 0.6862745098039216, blue: 0.3137254901960784)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .background(Color(red: 0.2980392156862745, green: 0.6862745098039216, blue: 0.3137254901960784))
                        .padding(.top, 10)
                    Text("WebView Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    // WebView requires UIViewRepresentable implementation
                    WebView(url: URL(string: "https://www.example.com")!)
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .padding(.top, 10)
                    Text("TabView Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    TabView {
                            Text("Content of Tab 1")
                                .font(.system(size: 14))
                                        .tabItem {
                                Label("Tab 1", systemImage: "circle")
                                        }
                                        .tag(0)
                            Text("Content of Tab 2")
                                .font(.system(size: 14))
                                        .tabItem {
                                Label("Tab 2", systemImage: "circle")
                                        }
                                        .tag(1)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .padding(.top, 10)
                    Text("Collection Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10) {
                            ForEach(Array(viewModel.data.items.getCellData(for: "ConverterTestCell").enumerated()), id: \.offset) { index, item in
                                ConverterTestCellView(data: item)
                            }
                        }
                            .padding(.horizontal)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .padding(.top, 10)
                    Text("Image Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    Image("star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.top, 10)
                    Text("NetworkImage Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    NetworkImage(
                        url: "https://picsum.photos/400/300",
                        contentMode: .fit
                    )
                        .frame(width: 200, height: 150)
                        .padding(.top, 10)
                        .cornerRadius(10)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
