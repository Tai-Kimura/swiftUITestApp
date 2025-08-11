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
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .padding(.top, 20)
                ZStack(alignment: .center) {
                    Color.clear
                    Text("centerInParent")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                    .padding(.top, 20)
                ZStack(alignment: .leading) {
                    Color.clear
                    Text("centerVertical")
                        .font(.system(size: 14))
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                    .padding(.top, 10)
                ZStack(alignment: .top) {
                    Color.clear
                    Text("centerHorizontal")
                        .font(.system(size: 14))
                        .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                    .padding(.top, 10)
                ZStack(alignment: .topLeading) {
                    Color.clear
                    Text("alignTop")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 1.0, blue: 0.8156862745098039))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725))
                    .padding(.top, 10)
                ZStack(alignment: .bottomLeading) {
                    Color.clear
                    Text("alignBottom")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 0.8156862745098039, blue: 1.0))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569))
                    .padding(.top, 10)
                ZStack(alignment: .topLeading) {
                    Color.clear
                    Text("alignLeft")
                        .font(.system(size: 14))
                        .background(Color(red: 0.8156862745098039, green: 1.0, blue: 1.0))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.5647058823529412, green: 0.5647058823529412, blue: 0.5647058823529412))
                    .padding(.top, 10)
                ZStack(alignment: .topTrailing) {
                    Color.clear
                    Text("alignRight")
                        .font(.system(size: 14))
                        .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255))
                    .padding(.top, 10)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
            // >>> GENERATED_CODE_END
        }
    }
}
