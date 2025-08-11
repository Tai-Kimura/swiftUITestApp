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
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
                ZStack(alignment: .bottomTrailing) {
                    Color.clear
                    Text("Right + Bottom")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                    .padding(.top, 20)
                ZStack(alignment: .bottomLeading) {
                    Color.clear
                    Text("Left + Bottom")
                        .font(.system(size: 14))
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                    .padding(.top, 10)
                ZStack(alignment: .topTrailing) {
                    Color.clear
                    Text("Right + Top")
                        .font(.system(size: 14))
                        .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                    .padding(.top, 10)
                ZStack(alignment: .bottom) {
                    Color.clear
                    Text("Center H + Bottom")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725))
                    .padding(.top, 10)
                ZStack(alignment: .trailing) {
                    Color.clear
                    Text("Right + Center V")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569))
                    .padding(.top, 10)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
            // >>> GENERATED_CODE_END
        }
    }
}
