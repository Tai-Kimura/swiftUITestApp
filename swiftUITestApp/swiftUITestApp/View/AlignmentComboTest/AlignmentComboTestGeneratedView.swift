import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentComboTestGeneratedView: View {
    @EnvironmentObject var viewModel: AlignmentComboTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "alignment_combo_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "alignment_combo_test", viewId: "alignment_combo_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from alignment_combo_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 0) {
                    HStack {
                        Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.bottom, 20)
                    }.frame(maxWidth: .infinity, alignment: .center)
                    Text("Corner Combinations")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Top-Left")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                    RelativePositionConstraint(type: .parentTop, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .topLeading,
                        backgroundColor: Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Top-Right")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: ""),
                                    RelativePositionConstraint(type: .parentTop, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .topTrailing,
                        backgroundColor: Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Bottom-Left")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                    RelativePositionConstraint(type: .parentBottom, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .bottomLeading,
                        backgroundColor: Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Bottom-Right")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: ""),
                                    RelativePositionConstraint(type: .parentBottom, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .bottomTrailing,
                        backgroundColor: Color(red: 0.7843137254901961, green: 0.7843137254901961, blue: 0.7843137254901961)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.7843137254901961, green: 0.7843137254901961, blue: 0.7843137254901961))
                        .padding(.bottom, 10)
                    Text("Edge + Center Combinations")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Top-Center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentTop, targetId: ""),
                                    RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .top,
                        backgroundColor: Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Bottom-Center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentBottom, targetId: ""),
                                    RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .bottom,
                        backgroundColor: Color(red: 0.7215686274509804, green: 0.7215686274509804, blue: 0.7215686274509804)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.7215686274509804, green: 0.7215686274509804, blue: 0.7215686274509804))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Left-Center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                    RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .leading,
                        backgroundColor: Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Right-Center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8, green: 1.0, blue: 0.8))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: ""),
                                    RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .trailing,
                        backgroundColor: Color(red: 0.6588235294117647, green: 0.6588235294117647, blue: 0.6588235294117647)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.6588235294117647, green: 0.6588235294117647, blue: 0.6588235294117647))
                        .padding(.bottom, 10)
                    Text("Multiple Elements Test")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("TL")
                                                                                                .font(.system(size: 12))
                                                                                                .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                                                                                                .padding(5)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                    RelativePositionConstraint(type: .parentTop, targetId: "")
                                ],
                                margins: .init()
                            ),
                            RelativeChildConfig(
                                id: "view_1",
                                view: AnyView(
                                                                                            Text("TR")
                                                                                                .font(.system(size: 12))
                                                                                                .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                                                                                                .padding(5)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: ""),
                                    RelativePositionConstraint(type: .parentTop, targetId: "")
                                ],
                                margins: .init()
                            ),
                            RelativeChildConfig(
                                id: "view_2",
                                view: AnyView(
                                                                                            Text("BL")
                                                                                                .font(.system(size: 12))
                                                                                                .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                                                                                                .padding(5)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                    RelativePositionConstraint(type: .parentBottom, targetId: "")
                                ],
                                margins: .init()
                            ),
                            RelativeChildConfig(
                                id: "view_3",
                                view: AnyView(
                                                                                            Text("BR")
                                                                                                .font(.system(size: 12))
                                                                                                .background(Color(red: 1.0, green: 1.0, blue: 0.8784313725490196))
                                                                                                .padding(5)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: ""),
                                    RelativePositionConstraint(type: .parentBottom, targetId: "")
                                ],
                                margins: .init()
                            ),
                            RelativeChildConfig(
                                id: "view_4",
                                view: AnyView(
                                                                                            Text("Center")
                                                                                                .font(.system(size: 12))
                                                                                                .background(Color(red: 1.0, green: 0.8784313725490196, blue: 1.0))
                                                                                                .padding(5)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenter, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .topLeading,
                        backgroundColor: Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569))
                        .padding(.bottom, 10)
                    Text("HStack Mixed Alignment")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    HStack(alignment: .center, spacing: 0) {
                        VStack {
                            Text("Left-Top")
                            .background(Color(red: 1.0, green: 0.6901960784313725, blue: 0.6901960784313725))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .top)
                        Spacer()
                        Spacer()
                        VStack {
                            Text("Center")
                            .background(Color(red: 0.6901960784313725, green: 1.0, blue: 0.6901960784313725))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .center)
                        Spacer()
                        Spacer()
                        VStack {
                            Text("Right-Bottom")
                            .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 1.0))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .bottom)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color(red: 0.596078431372549, green: 0.596078431372549, blue: 0.596078431372549))
                        .padding(.bottom, 10)
                    Text("VStack Mixed Alignment")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    VStack(alignment: .center, spacing: 0) {
                        HStack {
                            Text("Top-Left")
                            .background(Color(red: 1.0, green: 0.7529411764705882, blue: 0.7529411764705882))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Spacer()
                        HStack {
                            Text("Center")
                            .background(Color(red: 0.7529411764705882, green: 1.0, blue: 0.7529411764705882))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                        Spacer()
                        HStack {
                            Text("Bottom-Right")
                            .background(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 1.0))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .trailing)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .background(Color(red: 0.5647058823529412, green: 0.5647058823529412, blue: 0.5647058823529412))
                    Text("Edge Cases")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Only horizontal center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.9098039215686274, blue: 0.9098039215686274))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .center,
                        backgroundColor: Color(red: 0.5333333333333333, green: 0.5333333333333333, blue: 0.5333333333333333)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.5333333333333333, green: 0.5333333333333333, blue: 0.5333333333333333))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("Only vertical center")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.9098039215686274, green: 1.0, blue: 0.9098039215686274))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .center,
                        backgroundColor: Color(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255))
                }
                    .frame(maxWidth: .infinity)
                    .padding(20)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
            // >>> GENERATED_CODE_END
        }
    }
}
