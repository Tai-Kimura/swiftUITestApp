import SwiftUI
import SwiftJsonUI
import Combine

struct DatePickerTestGeneratedView: View {
    @EnvironmentObject var viewModel: DatePickerTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "date_picker_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "date_picker_test", viewId: "date_picker_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from date_picker_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(viewModel.data.title)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .padding(.top, 20)
                    Text("Basic DatePicker")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    SelectBoxView(
                        id: "basic_date_picker",
                        selectItemType: .date,
                        datePickerMode: .date,
                        dateStringFormat: "yyyy-MM-dd"
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("DatePicker with Min/Max Dates")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Text("Min: 2025-01-01, Max: 2025-12-31")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 5)
                    SelectBoxView(
                        id: "limited_date_picker",
                        selectItemType: .date,
                        datePickerMode: .date,
                        dateStringFormat: "yyyy-MM-dd",
                        minimumDate: "2025-01-01".toDate(format: "yyyy-MM-dd") ?? Date(),
                        maximumDate: "2025-12-31".toDate(format: "yyyy-MM-dd") ?? Date()
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Time Picker")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    SelectBoxView(
                        id: "time_picker",
                        selectItemType: .date,
                        datePickerMode: .time,
                        dateStringFormat: "HH:mm"
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("DateTime Picker")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    SelectBoxView(
                        id: "datetime_picker",
                        selectItemType: .date,
                        datePickerMode: .dateTime,
                        dateStringFormat: "yyyy-MM-dd HH:mm"
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("DatePicker with Minute Interval")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Text("15 minute intervals")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        .padding(.top, 5)
                    SelectBoxView(
                        id: "interval_picker",
                        selectItemType: .date,
                        datePickerMode: .time,
                        dateStringFormat: "HH:mm"
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Calendar Style DatePicker")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    SelectBoxView(
                        id: "calendar_picker",
                        selectItemType: .date,
                        datePickerMode: .date,
                        datePickerStyle: .graphical,
                        dateStringFormat: "yyyy-MM-dd"
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .padding(.top, 10)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    SelectBoxView(
                        id: "date_range_select",
                        selectItemType: .date
                    )
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.top, 30)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Selected Values:")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                        Text("Date: \(viewModel.data.selectedDate)")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.top, 5)
                        Text("Range: \(viewModel.data.startDate) to \(viewModel.data.endDate)")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            .padding(.top, 5)
                    }
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                        .padding(.top, 30)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(15)
                        .cornerRadius(8)
                }
                    .frame(maxWidth: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.9725490196078431, blue: 0.9725490196078431))
            // >>> GENERATED_CODE_END
        }
    }
}
