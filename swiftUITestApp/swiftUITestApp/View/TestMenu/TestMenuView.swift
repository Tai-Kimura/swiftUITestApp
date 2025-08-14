import SwiftUI
import SwiftJsonUI
import Combine

struct TestMenuView: View {
    @StateObject private var viewModel: TestMenuViewModel
    
    // Default initializer
    init() {
        _viewModel = StateObject(wrappedValue: TestMenuViewModel())
    }
    
    // Initializer with data parameter for Include support
    init(data: [String: Any]) {
        let vm = TestMenuViewModel()
        vm.data.update(dictionary: data)
        _viewModel = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        NavigationStack(path: $viewModel.navigationPath) {
            TestMenuGeneratedView()
                .environmentObject(viewModel)
                .onAppear {
                    // Reset to static mode when returning to menu
                    ViewSwitcher.setDynamicMode(false)
                    viewModel.updateDynamicModeStatus()
                }
                .navigationDestination(for: TestDestination.self) { destination in
                    switch destination {
                    case .marginsTest:
                        MarginsTestView()
                    case .alignmentTest:
                        AlignmentTestView()
                    case .alignmentComboTest:
                        AlignmentComboTestView()
                    case .weightTest:
                        WeightTestView()
                    case .weightTestWithFixed:
                        WeightTestWithFixedView()
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
                    case .textviewHintTest:
                        TextViewHintTestView()
                    case .relativeTest:
                        RelativeTestView()
                    case .bindingTest:
                        BindingTestView()
                    case .converterTest:
                        ConverterTestView()
                    case .includeTest:
                        IncludeTestView()
                    case .formTest:
                        FormTestView()
                    case .componentsTest:
                        ComponentsTestView()
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
