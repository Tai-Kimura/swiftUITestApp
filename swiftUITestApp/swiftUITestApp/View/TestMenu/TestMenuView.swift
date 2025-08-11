import Combine
import SwiftJsonUI
import SwiftUI

struct TestMenuView: View {
    @StateObject private var viewModel = TestMenuViewModel()

    var body: some View {
        NavigationStack(path: $viewModel.navigationPath) {
            TestMenuGeneratedView()
                .environmentObject(viewModel)
                .navigationTitle("SwiftJsonUI Tests")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: TestDestination.self) {
                    destination in
                    switch destination {
                    case .marginsTest:
                        MarginsTestView()
                    case .alignmentTest:
                        AlignmentTestView()
                    case .alignmentComboTest:
                        AlignmentComboTestView()
                    case .weightTest:
                        WeightTestView()
                    case .visibilityTest:
                        VisibilityTestView()
                    case .disabledTest:
                        DisabledTestView()
                    case .textStylingTest:
                        TextStylingTestView()
                    case .lineBreakTest:
                        LineBreakTestView()
                    case .secureFieldTest:
                        SecureFieldTestView()
                    case .datePickerTest:
                        DatePickerTestView()
                    case .relativeTest:
                        RelativeTestView()
                    case .bindingTest:
                        BindingTestView()
                    case .converterTest:
                        ConverterTestView()
                    }
                }
        }

    }
}

// MARK: - Preview
struct TestMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TestMenuView()
    }
}
