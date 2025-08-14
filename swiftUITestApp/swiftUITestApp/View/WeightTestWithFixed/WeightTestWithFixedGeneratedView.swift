import SwiftUI
import SwiftJsonUI
import Combine

struct WeightTestWithFixedGeneratedView: View {
    @EnvironmentObject var viewModel: WeightTestWithFixedViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "weight_test_with_fixed")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "weight_test_with_fixed", viewId: "weight_test_with_fixed_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from weight_test_with_fixed.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    Text("Fixed(80) + Weight(1) + Weight(2) + Fixed(60)")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 20)
                    WeightedHStack(alignment: .top, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("Fixed: 80")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 80)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("Weight: 1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("Weight: 2")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                          ),
                          weight: 2.0
                        ),
                        (
                          view: AnyView(
                            Text("Fixed: 60")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 60)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                          ),
                          weight: 0.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .padding(.top, 10)
                    Text("Complex nested weights with fixed")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedHStack(alignment: .top, spacing: 0, children: [
                        (
                          view: AnyView(
                            WeightedVStack(alignment: .leading, spacing: 0, children: [
                            (
                            view: AnyView(
                            Text("1-1")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                            ),
                            weight: 1.0
                            ),
                            (
                            view: AnyView(
                            Text("1-2")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 1.0, green: 0.7529411764705882, blue: 0.7529411764705882))
                            ),
                            weight: 2.0
                            )
                            ])
                            .frame(maxHeight: .infinity)
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("Fix\n50")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            WeightedVStack(alignment: .leading, spacing: 0, children: [
                            (
                            view: AnyView(
                            Text("Fixed 30")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 30)
                            .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                            ),
                            weight: 0.0
                            ),
                            (
                            view: AnyView(
                            Text("Weight 1")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.7529411764705882, green: 1.0, blue: 0.7529411764705882))
                            ),
                            weight: 1.0
                            )
                            ])
                            .frame(maxHeight: .infinity)
                          ),
                          weight: 2.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .padding(.top, 10)
                    Text("Multiple fixed sizes with weights")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedHStack(alignment: .top, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("40")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 40)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("60")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 60)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("80")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 80)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                          ),
                          weight: 0.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .padding(.top, 10)
                    Text("Zero weights test")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedHStack(alignment: .top, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("W:0")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.6274509803921569, blue: 0.6274509803921569))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.6274509803921569, green: 1.0, blue: 0.6274509803921569))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("Fixed:100")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 100)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 1.0))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("W:3")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 1.0, blue: 0.6274509803921569))
                          ),
                          weight: 3.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .padding(.top, 10)
                    Text("Vertical: Fixed + Weight combinations")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedVStack(alignment: .leading, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("Fixed: 30")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 30)
                            .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("Weight: 1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("Fixed: 40")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            Text("Weight: 2")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 1.0, green: 1.0, blue: 0.8784313725490196))
                          ),
                          weight: 2.0
                        ),
                        (
                          view: AnyView(
                            Text("Fixed: 50")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color(red: 1.0, green: 0.8784313725490196, blue: 1.0))
                          ),
                          weight: 0.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .padding(.top, 10)
                    Text("Vertical: Nested horizontal weights")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedVStack(alignment: .leading, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("Header: Fixed 25")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 25)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4))
                          ),
                          weight: 0.0
                        ),
                        (
                          view: AnyView(
                            WeightedHStack(alignment: .top, spacing: 0, children: [
                            (
                            view: AnyView(
                            Text("Col 1")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                            ),
                            weight: 1.0
                            ),
                            (
                            view: AnyView(
                            Text("Fix:60")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(width: 60)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                            ),
                            weight: 0.0
                            ),
                            (
                            view: AnyView(
                            Text("Col 2")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                            .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                            ),
                            weight: 2.0
                            )
                            ])
                            .frame(maxWidth: .infinity)
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("Footer: Fixed 25")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 25)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4))
                          ),
                          weight: 0.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .padding(.top, 10)
                    Text("Vertical: Multiple weights only")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .padding(.top, 30)
                    WeightedVStack(alignment: .leading, spacing: 0, children: [
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.8, green: 1.0, blue: 0.8))
                          ),
                          weight: 1.0
                        ),
                        (
                          view: AnyView(
                            Text("W:2")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.8, green: 0.8, blue: 1.0))
                          ),
                          weight: 2.0
                        ),
                        (
                          view: AnyView(
                            Text("W:1")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(maxHeight: .infinity)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 1.0, green: 1.0, blue: 0.8))
                          ),
                          weight: 1.0
                        )
                    ])
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .padding(.top, 10)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
