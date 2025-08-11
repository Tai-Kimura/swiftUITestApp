import SwiftUI
import SwiftJsonUI
import Combine

struct ConverterTestCellGeneratedView: View {
    @EnvironmentObject var viewModel: ConverterTestCellViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "converter_test_cell")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "converter_test_cell", viewId: "converter_test_cell_view")
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from converter_test_cell.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.data.title)")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .fontWeight(.bold)
                    .padding(.bottom, 4)
                Text("\(viewModel.data.subtitle)")
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
            }
                .frame(maxWidth: .infinity)
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                .padding(10)
            // >>> GENERATED_CODE_END
        }
    }
}
