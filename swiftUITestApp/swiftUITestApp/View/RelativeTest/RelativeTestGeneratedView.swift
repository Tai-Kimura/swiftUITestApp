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
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                        Text("1. Parent Constraints with Margin + Padding")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "parent_top_left",
                                    view: AnyView(
                                        Text("Top+Left\ntopMargin:10\nleftMargin:15")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(8)
                                            .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "parent_top_right",
                                    view: AnyView(
                                        Text("Top+Right\ntopMargin:15\nrightMargin:20")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(8)
                                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 20)
                                ),
                                RelativeChildConfig(
                                    id: "parent_bottom_left",
                                    view: AnyView(
                                        Text("Bottom+Left\nbottomMargin:5\nleftMargin:10")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(8)
                                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "parent_bottom_right",
                                    view: AnyView(
                                        Text("Bottom+Right\nbottomMargin:20\nrightMargin:25")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(8)
                                            .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 25)
                                )
                            ],
                            alignment: .topLeading,
                            backgroundColor: Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196),
                            parentPadding: EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 30)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(.bottom, 20)
                        Text("2. Edge Alignment (Self Margin Only, Ignore Anchor Margin)")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "anchor_with_margin",
                                    view: AnyView(
                                        Text("Anchor\nmargins:[20,25,20,25]")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 120, height: 60)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentCenter, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25)
                                ),
                                RelativeChildConfig(
                                    id: "align_top_test",
                                    view: AnyView(
                                        Text("alignTop\ntopMargin:10")
                                            .padding(5)
                                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignTop, targetId: "anchor_with_margin"),
                                        RelativePositionConstraint(type: .parentLeft, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "align_bottom_test",
                                    view: AnyView(
                                        Text("alignBottom\nbottomMargin:10")
                                            .padding(5)
                                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignBottom, targetId: "anchor_with_margin"),
                                        RelativePositionConstraint(type: .parentRight, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10)
                                ),
                                RelativeChildConfig(
                                    id: "align_left_test",
                                    view: AnyView(
                                        Text("alignLeft\nleftMargin:15")
                                            .padding(5)
                                            .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignLeft, targetId: "anchor_with_margin"),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "align_right_test",
                                    view: AnyView(
                                        Text("alignRight\nrightMargin:15")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignRight, targetId: "anchor_with_margin"),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 15)
                                )
                            ],
                            alignment: .center,
                            backgroundColor: Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274),
                            parentPadding: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 250)
                            .background(Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274))
                            .padding(.bottom, 20)
                        Text("3. Relative Position (Both Margins Applied)")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "center_anchor",
                                    view: AnyView(
                                        Text("Center\nmargins:[15,15,15,15]")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 100, height: 50)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentCenter, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
                                ),
                                RelativeChildConfig(
                                    id: "above_test",
                                    view: AnyView(
                                        Text("Above\nbottomMargin:10")
                                            .padding(5)
                                            .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .above, targetId: "center_anchor"),
                                        RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "below_test",
                                    view: AnyView(
                                        Text("Below\ntopMargin:10")
                                            .padding(5)
                                            .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .below, targetId: "center_anchor"),
                                        RelativePositionConstraint(type: .parentCenterHorizontal, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "left_of_test",
                                    view: AnyView(
                                        Text("LeftOf\nrightMargin:10")
                                            .padding(5)
                                            .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .leftOf, targetId: "center_anchor"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10)
                                ),
                                RelativeChildConfig(
                                    id: "right_of_test",
                                    view: AnyView(
                                        Text("RightOf\nleftMargin:10")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .rightOf, targetId: "center_anchor"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
                                )
                            ],
                            alignment: .center,
                            backgroundColor: Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118),
                            parentPadding: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 300)
                            .background(Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118))
                            .padding(.bottom, 20)
                        Text("4. Fixed Size with Both-Side Constraints (Centering)")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "fixed_width_center",
                                    view: AnyView(
                                        Text("Fixed Width\nLeft+Right\nmargins:[10,10,10,10]")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 100)
                                            .padding(10)
                                            .background(Color(red: 0.6352941176470588, green: 0.6078431372549019, blue: 0.996078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
                                ),
                                RelativeChildConfig(
                                    id: "fixed_height_center",
                                    view: AnyView(
                                        Text("Fixed Height\nTop+Bottom")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(height: 50)
                                            .padding(10)
                                            .background(Color(red: 0.4235294117647059, green: 0.3607843137254902, blue: 0.9058823529411765))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "fixed_both_center",
                                    view: AnyView(
                                        Text("Fixed Both")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 80, height: 40)
                                        .background(Color(red: 0.9921568627450981, green: 0.4745098039215686, blue: 0.6588235294117647))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
                                )
                            ],
                            alignment: .topLeading,
                            backgroundColor: Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196),
                            parentPadding: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                            .padding(.bottom, 20)
                        Text("5. Dynamic Size (Stretch Between Constraints)")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "stretch_horizontal",
                                    view: AnyView(
                                        Text("Stretch Horizontal\nleftMargin:10, rightMargin:15")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                            .padding(10)
                                            .background(Color(red: 0.0, green: 0.7215686274509804, blue: 0.5803921568627451))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 15)
                                ),
                                RelativeChildConfig(
                                    id: "stretch_vertical",
                                    view: AnyView(
                                        Text("Stretch\nVertical\ntop:10\nbottom:15")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                            .padding(10)
                                            .background(Color(red: 0.0, green: 0.807843137254902, blue: 0.788235294117647))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "stretch_both",
                                    view: AnyView(
                                        Text("Stretch Both Directions\nmargins:[15,20,15,20]")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                            .padding(10)
                                            .background(Color(red: 0.38823529411764707, green: 0.43137254901960786, blue: 0.4470588235294118))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentRight, targetId: ""),
                                        RelativePositionConstraint(type: .parentTop, targetId: ""),
                                        RelativePositionConstraint(type: .parentBottom, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20)
                                )
                            ],
                            alignment: .topLeading,
                            backgroundColor: Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039),
                            parentPadding: EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 30)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 250)
                            .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                            .padding(.bottom, 20)
                        Text("6. Complex Chaining with Different Margins")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        RelativePositionContainer(
                            children: [
                                RelativeChildConfig(
                                    id: "chain_start",
                                    view: AnyView(
                                        Text("Start\nleft:10\nright:5")
                                        .font(.system(size: 10))
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60, height: 40)
                                        .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.4196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .parentLeft, targetId: ""),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 5)
                                ),
                                RelativeChildConfig(
                                    id: "chain_middle",
                                    view: AnyView(
                                        Text("Middle\nleft:15\nright:20")
                                        .font(.system(size: 10))
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60, height: 40)
                                        .background(Color(red: 0.3058823529411765, green: 0.803921568627451, blue: 0.7686274509803922))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .rightOf, targetId: "chain_start"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 20)
                                ),
                                RelativeChildConfig(
                                    id: "chain_end",
                                    view: AnyView(
                                        Text("End\nleft:10\nright:10")
                                        .font(.system(size: 10))
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60, height: 40)
                                        .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .rightOf, targetId: "chain_middle"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
                                ),
                                RelativeChildConfig(
                                    id: "chain_above",
                                    view: AnyView(
                                        Text("Above Middle\nbottom:5")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignLeft, targetId: "chain_middle"),
                                        RelativePositionConstraint(type: .above, targetId: "chain_middle")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0)
                                ),
                                RelativeChildConfig(
                                    id: "chain_below",
                                    view: AnyView(
                                        Text("Below Start\ntop:8")
                                            .padding(5)
                                            .background(Color(red: 0.9803921568627451, green: 0.6941176470588235, blue: 0.6274509803921569))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignRight, targetId: "chain_start"),
                                        RelativePositionConstraint(type: .below, targetId: "chain_start")
                                    ],
                                    margins: EdgeInsets(top: 8, leading: 0, bottom: 10, trailing: 0)
                                )
                            ],
                            alignment: .leading,
                            backgroundColor: Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274),
                            parentPadding: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 250)
                            .background(Color(red: 0.9098039215686274, green: 0.9098039215686274, blue: 0.9098039215686274))
                            .padding(.bottom, 20)
                        Text("7. Mixed Anchor References")
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
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
                                    margins: EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 10)
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
                                    margins: EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 20)
                                ),
                                RelativeChildConfig(
                                    id: "between_refs",
                                    view: AnyView(
                                        Text("Between (stretch)")
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.8509803921568627, blue: 0.23921568627450981))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .leftOf, targetId: "ref2"),
                                        RelativePositionConstraint(type: .rightOf, targetId: "ref1"),
                                        RelativePositionConstraint(type: .parentCenterVertical, targetId: "")
                                    ],
                                    margins: EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
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
                                    margins: EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10)
                                ),
                                RelativeChildConfig(
                                    id: "complex_chain",
                                    view: AnyView(
                                        Text("Below Ref1")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                            .padding(5)
                                            .background(Color(red: 1.0, green: 0.4196078431372549, blue: 0.615686274509804))
                                    ),
                                    constraints: [
                                        RelativePositionConstraint(type: .alignLeft, targetId: "ref1"),
                                        RelativePositionConstraint(type: .below, targetId: "ref1")
                                    ],
                                    margins: EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
                                )
                            ],
                            alignment: .topLeading,
                            backgroundColor: Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118),
                            parentPadding: EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
                        )
                            .frame(maxWidth: .infinity)
                            .frame(height: 250)
                            .background(Color(red: 0.8470588235294118, green: 0.8470588235294118, blue: 0.8470588235294118))
                            .padding(.bottom, 20)
                        Spacer(minLength: 0)
                    }
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .padding(.top, 20)
                .padding(.trailing, 20)
                .padding(.bottom, 20)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            // >>> GENERATED_CODE_END
        }
    }
}
