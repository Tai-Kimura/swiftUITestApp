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
                                .padding(.leading, 120)
                            ),
                            constraints: [
                                RelativePositionConstraint(type: .alignTop, targetId: "anchor_view")
                            ],
                            margins: EdgeInsets(top: 0, leading: 120, bottom: 0, trailing: 0)
                        ),
                        RelativeChildConfig(
                            id: "bottom_aligned",
                            view: AnyView(
                                Text("alignBottomView")
                                .padding(5)
                                .background(Color(red: 0.27058823529411763, green: 0.7176470588235294, blue: 0.8196078431372549))
                                .padding(.leading, 120)
                            ),
                            constraints: [
                                RelativePositionConstraint(type: .alignBottom, targetId: "anchor_view")
                            ],
                            margins: EdgeInsets(top: 0, leading: 120, bottom: 0, trailing: 0)
                        ),
                        RelativeChildConfig(
                            id: "left_aligned",
                            view: AnyView(
                                Text("alignLeftView")
                                .padding(5)
                                .background(Color(red: 0.5882352941176471, green: 0.807843137254902, blue: 0.7058823529411765))
                                .padding(.top, 70)
                            ),
                            constraints: [
                                RelativePositionConstraint(type: .alignLeft, targetId: "anchor_view")
                            ],
                            margins: EdgeInsets(top: 70, leading: 0, bottom: 0, trailing: 0)
                        ),
                        RelativeChildConfig(
                            id: "right_aligned",
                            view: AnyView(
                                Text("alignRightView")
                                .padding(5)
                                .background(Color(red: 1.0, green: 0.9176470588235294, blue: 0.6549019607843137))
                                .padding(.top, 100)
                            ),
                            constraints: [
                                RelativePositionConstraint(type: .alignRight, targetId: "anchor_view")
                            ],
                            margins: EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0)
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
