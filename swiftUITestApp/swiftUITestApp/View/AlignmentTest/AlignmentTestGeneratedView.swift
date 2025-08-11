import SwiftUI
import SwiftJsonUI
import Combine

struct AlignmentTestGeneratedView: View {
    @EnvironmentObject var viewModel: AlignmentTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "alignment_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "alignment_test", viewId: "alignment_test_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from alignment_test.json
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
                    Text("Parent Alignment - Single Properties")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("alignTop")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentTop, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .top,
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
                                                                                            Text("alignBottom")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentBottom, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .bottom,
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
                                                                                            Text("alignLeft")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentLeft, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .leading,
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
                                                                                            Text("alignRight")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentRight, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .trailing,
                        backgroundColor: Color(red: 0.7843137254901961, green: 0.7843137254901961, blue: 0.7843137254901961)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.7843137254901961, green: 0.7843137254901961, blue: 0.7843137254901961))
                        .padding(.bottom, 10)
                    RelativePositionContainer(
                        children: [
                            RelativeChildConfig(
                                id: "view_0",
                                view: AnyView(
                                                                                            Text("centerHorizontal")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .center,
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
                                                                                            Text("centerVertical")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 1.0))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .center,
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
                                                                                            Text("centerInParent")
                                                                                                .font(.system(size: 14))
                                                                                                .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                                                                                                .padding(8)
                                ),
                                constraints: [
                                    RelativePositionConstraint(type: .parentCenter, targetId: "")
                                ],
                                margins: .init()
                            )
                        ],
                        alignment: .center,
                        backgroundColor: Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725)
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725))
                        .padding(.bottom, 10)
                    Text("HStack Alignment Tests")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    HStack(alignment: .center, spacing: 0) {
                        VStack {
                            Text("Top")
                            .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .top)
                        Text("Default")
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(8)
                        VStack {
                            Text("Bottom")
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .bottom)
                        VStack {
                            Text("Center")
                            .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                            .padding(8)
                        }.frame(maxHeight: .infinity, alignment: .center)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color(red: 0.6588235294117647, green: 0.6588235294117647, blue: 0.6588235294117647))
                        .padding(.bottom, 10)
                    Text("VStack Alignment Tests")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    VStack(alignment: .center, spacing: 0) {
                        HStack {
                            Text("alignLeft")
                            .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        Text("Default")
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(8)
                        HStack {
                            Text("alignRight")
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .trailing)
                        HStack {
                            Text("centerHorizontal")
                            .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                            .padding(8)
                        }.frame(maxWidth: .infinity, alignment: .center)
                    }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569))
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
