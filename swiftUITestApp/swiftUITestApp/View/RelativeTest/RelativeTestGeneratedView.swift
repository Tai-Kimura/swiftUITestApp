import SwiftUI
import SwiftJsonUI
import Combine

struct RelativeTestGeneratedView: View {
    @EnvironmentObject var viewModel: RelativeTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "relative_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "relative_test", viewId: "relative_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from relative_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("\(viewModel.data.title)")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.top, 20)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "anchor_view",
                                    view: AnyView(
                                        Text("Anchor")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 100, height: 50)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentCenter, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "top_aligned",
                                    view: AnyView(
                                        Text("alignTopView")
                                            .padding(5)
                                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "anchor_view")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "bottom_aligned",
                                    view: AnyView(
                                        Text("alignBottomView")
                                            .padding(5)
                                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignBottom, targetId: "anchor_view")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "left_aligned",
                                    view: AnyView(
                                        Text("alignLeftView")
                                            .padding(5)
                                            .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignLeft, targetId: "anchor_view")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "right_aligned",
                                    view: AnyView(
                                        Text("alignRightView")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignRight, targetId: "anchor_view")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "above_view",
                                    view: AnyView(
                                        Text("alignTopOfView")
                                            .padding(5)
                                            .background(Color(red: 0.8745098039215686, green: 0.9019607843137255, blue: 0.9137254901960784))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .above, targetId: "anchor_view"),
                                        RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "below_view",
                                    view: AnyView(
                                        Text("alignBottomOfView")
                                            .padding(5)
                                            .background(Color(red: 0.6980392156862745, green: 0.7450980392156863, blue: 0.7647058823529411))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .below, targetId: "anchor_view"),
                                        RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "left_of_view",
                                    view: AnyView(
                                        Text("alignLeftOfView")
                                            .padding(5)
                                            .background(Color(red: 0.9803921568627451, green: 0.6941176470588235, blue: 0.6274509803921569))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .leftOf, targetId: "anchor_view"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "right_of_view",
                                    view: AnyView(
                                        Text("alignRightOfView")
                                            .padding(5)
                                            .background(Color(red: 0.4549019607843137, green: 0.7254901960784313, blue: 1.0))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .rightOf, targetId: "anchor_view"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: .init()
                                )
                            ],
                            alignment: .center,
                            backgroundColor: Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 400)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(.top, 20)
                        Text("Complex Positioning Tests")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "complex_anchor",
                                    view: AnyView(
                                        Text("Anchor")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 80, height: 40)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentCenter, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "both_align",
                                    view: AnyView(
                                        Text("Top+Left")
                                            .padding(5)
                                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "complex_anchor"),
                                        RelativePositionConstraint(type: .alignLeft, targetId: "complex_anchor")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "both_align2",
                                    view: AnyView(
                                        Text("Bottom+Right")
                                            .padding(5)
                                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignBottom, targetId: "complex_anchor"),
                                        RelativePositionConstraint(type: .alignRight, targetId: "complex_anchor")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "multi_align",
                                    view: AnyView(
                                        Text("Top+Right")
                                            .padding(5)
                                            .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "complex_anchor"),
                                        RelativePositionConstraint(type: .alignRight, targetId: "complex_anchor")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "chain1",
                                    view: AnyView(
                                        Text("Chain1")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "complex_anchor"),
                                        RelativePositionConstraint(type: .rightOf, targetId: "complex_anchor")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "chain2",
                                    view: AnyView(
                                        Text("Chain2")
                                            .padding(5)
                                            .background(Color(red: 0.9921568627450981, green: 0.4745098039215686, blue: 0.6588235294117647))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "chain1"),
                                        RelativePositionConstraint(type: .rightOf, targetId: "chain1")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "double_ref",
                                    view: AnyView(
                                        Text("Below+RightOf")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(5)
                                            .background(Color(red: 0.6352941176470588, green: 0.6078431372549019, blue: 0.996078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .below, targetId: "complex_anchor"),
                                        RelativePositionConstraint(type: .rightOf, targetId: "complex_anchor")
                                    ],
                                    margins: .init()
                                )
                            ],
                            alignment: .center,
                            backgroundColor: Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 300)
                            .background(Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274))
                            .padding(.top, 10)
                        Text("Multiple Reference Points")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "ref1",
                                    view: AnyView(
                                        Text("Ref1")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60, height: 30)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "ref2",
                                    view: AnyView(
                                        Text("Ref2")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60, height: 30)
                                        .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 20)
                                ),
                                RelativeChildConfig(
                                    id: "between_refs",
                                    view: AnyView(
                                        Text("Between")
                                        .frame(maxWidth: .infinity)
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.8509803921568627, blue: 0.23921568627450981))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .leftOf, targetId: "ref2"),
                                        RelativePositionConstraint(type: .rightOf, targetId: "ref1"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "aligned_both",
                                    view: AnyView(
                                        Text("AlignBoth")
                                            .padding(5)
                                            .background(Color(red: 0.4196078431372549, green: 0.796078431372549, blue: 0.4666666666666667))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "ref1"),
                                        RelativePositionConstraint(type: .alignRight, targetId: "ref2")
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "complex_chain",
                                    view: AnyView(
                                        Text("Complex")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.615686274509804))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .below, targetId: "ref1"),
                                        RelativePositionConstraint(type: .alignLeft, targetId: "ref1")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
                                )
                            ],
                            alignment: .topLeading,
                            backgroundColor: Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 250)
                            .background(Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118))
                            .padding(.top, 10)
                        Text("Offset Positioning")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "view_0",
                                    view: AnyView(
                                        Text("offsetX: 50, offsetY: 30")
                                            .padding(10)
                                            .background(Color(red: 0.6352941176470588, green: 0.6078431372549019, blue: 0.996078431372549))
                                    ),
                                    constraints: [
                                    ],
                                    margins: .init()
                                ),
                                RelativeChildConfig(
                                    id: "view_1",
                                    view: AnyView(
                                        Text("offsetX: -30, offsetY: 80")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(10)
                                            .background(Color(red: 0.4235294117647059, green: 0.3607843137254902, blue: 0.9058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentRight, targetId: "")
                                    ],
                                    margins: .init()
                                )
                            ],
                            alignment: .topTrailing,
                            backgroundColor: Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                            .padding(.top, 10)
                        Spacer(minLength: 0)
                    }
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
