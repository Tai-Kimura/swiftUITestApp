import SwiftUI
import SwiftJsonUI
import Combine

struct WeightTestGeneratedView: View {
    @EnvironmentObject var viewModel: WeightTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "weight_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "weight_test", viewId: "weight_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from weight_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
                Text("Horizontal Weight Distribution (1:2:1)")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .padding(.top, 20)
                WeightedHStack(alignment: .top, spacing: 0, children: [
                    (
                      view: AnyView(
                        Text("Weight: 1")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                      ),
                      weight: 1.0
                    ),
                    (
                      view: AnyView(
                        Text("Weight: 2")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                      ),
                      weight: 2.0
                    ),
                    (
                      view: AnyView(
                        Text("Weight: 1")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                      ),
                      weight: 1.0
                    )
                ])
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .padding(.top, 10)
                Text("Vertical Weight Distribution (1:3:2)")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .padding(.top, 30)
                WeightedVStack(alignment: .leading, spacing: 0, children: [
                    (
                      view: AnyView(
                        Text("Weight: 1")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                      ),
                      weight: 1.0
                    ),
                    (
                      view: AnyView(
                        Text("Weight: 3")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                      ),
                      weight: 3.0
                    ),
                    (
                      view: AnyView(
                        Text("Weight: 2")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .frame(maxHeight: .infinity)
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 1.0))
                      ),
                      weight: 2.0
                    )
                ])
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .padding(.top, 10)
                Text("widthWeight Test")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .padding(.top, 30)
                WeightedHStack(alignment: .top, spacing: 0, children: [
                    (
                      view: AnyView(
                        Text("widthWeight: 1")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                      ),
                      weight: 1.0
                    ),
                    (
                      view: AnyView(
                        Text("widthWeight: 1")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                      ),
                      weight: 1.0
                    )
                ])
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .padding(.top, 10)
                Spacer(minLength: 0)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902))
            // >>> GENERATED_CODE_END
        }
    }
}
