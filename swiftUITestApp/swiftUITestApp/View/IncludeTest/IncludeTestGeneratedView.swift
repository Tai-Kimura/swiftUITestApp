import SwiftUI
import SwiftJsonUI
import Combine

struct IncludeTestGeneratedView: View {
    @EnvironmentObject var viewModel: IncludeTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "include_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "include_test", viewId: "include_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from include_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("\(viewModel.data.title)")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Control Panel")
                                .font(.system(size: 18))
                                .foregroundColor(Color(red: 0.0, green: 0.4, blue: 0.8))
                            HStack(alignment: .top, spacing: 0) {
                                Button(action: {
                                    viewModel.incrementCount()
                                }) {
                                    Text("Count +")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                }
                                    .background(Color(red: 0.2980392156862745, green: 0.6862745098039216, blue: 0.3137254901960784))
                                    .padding(10)
                                    .cornerRadius(5)
                                Button(action: {
                                    viewModel.decrementCount()
                                }) {
                                    Text("Count -")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                }
                                    .background(Color(red: 1.0, green: 0.596078431372549, blue: 0.0))
                                    .padding(10)
                                    .cornerRadius(5)
                                Button(action: {
                                    viewModel.resetCount()
                                }) {
                                    Text("Reset")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                }
                                    .background(Color(red: 0.12941176470588237, green: 0.5882352941176471, blue: 0.9529411764705882))
                                    .padding(10)
                                    .cornerRadius(5)
                            }
                            HStack(alignment: .top, spacing: 0) {
                                Button(action: {
                                    viewModel.changeUserName()
                                }) {
                                    Text("Change Name")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                }
                                    .background(Color(red: 0.611764705882353, green: 0.15294117647058825, blue: 0.6901960784313725))
                                    .padding(10)
                                    .cornerRadius(5)
                                Button(action: {
                                    viewModel.toggleStatus()
                                }) {
                                    Text("Toggle Status")
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                }
                                    .background(Color(red: 0.3764705882352941, green: 0.49019607843137253, blue: 0.5450980392156862))
                                    .padding(10)
                                    .cornerRadius(5)
                            }
                            HStack(alignment: .top, spacing: 0) {
                                Text("Current Values: ")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                                Text("Count=\(viewModel.data.mainCount), ")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                Text("User=\(viewModel.data.userName), ")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                Text("Status=\(viewModel.data.mainStatus)")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            }
                                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                                .padding(10)
                                .cornerRadius(5)
                        }
                            .background(Color(red: 0.9098039215686274, green: 0.9568627450980393, blue: 0.9921568627450981))
                            .padding(15)
                            .cornerRadius(8)
                        VStack(alignment: .leading, spacing: 0) {
                            Text("1. Basic Include with static data:")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            // Component will be replaced by IncludeConverter
                            // include: included_1
                            // data: {"title":"Included View 1","message":"This is the first included view","count":1}
                            Included1View(data: ["title": "Included View 1", "message": "This is the first included view", "count": 1])
                        }
                        VStack(alignment: .leading, spacing: 0) {
                            Text("2. Include with data (static values):")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            // Component will be replaced by IncludeConverter
                            // include: included_2
                            // data: {"viewTitle":"Static Title","viewStatus":"Static Status","viewCount":42}
                            Included2View(data: ["viewTitle": "Static Title", "viewStatus": "Static Status", "viewCount": 42])
                        }
                        VStack(alignment: .leading, spacing: 0) {
                            Text("3. Include with data (using @{} references):")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            // Component will be replaced by IncludeConverter
                            // include: included_2
                            // data: {"viewTitle":"@{userName}","viewStatus":"@{mainStatus}","viewCount":"@{mainCount}"}
                            Included2View(data: ["viewTitle": viewModel.data.userName, "viewStatus": viewModel.data.mainStatus, "viewCount": viewModel.data.mainCount])
                                .id("\(viewModel.data.userName)_\(viewModel.data.mainStatus)_\(viewModel.data.mainCount)")
                        }
                        VStack(alignment: .leading, spacing: 0) {
                            Text("4. Include with shared_data and data override:")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            // Component will be replaced by IncludeConverter
                            // include: included_2
                            // shared_data: {"viewTitle":"@{userName}","viewStatus":"@{mainStatus}","viewCount":"@{mainCount}"}
                            // data: {"viewStatus":"Overridden Status"}
                            Included2View(data: ["viewTitle": viewModel.data.userName, "viewStatus": "Overridden Status", "viewCount": viewModel.data.mainCount])
                                .id("\(viewModel.data.userName)_\(viewModel.data.mainCount)")
                            // shared_data: {"viewTitle"=>"@{userName}", "viewStatus"=>"@{mainStatus}", "viewCount"=>"@{mainCount}"}
                        }
                        VStack(alignment: .leading, spacing: 0) {
                            Text("5. Another included_1 with @{} references:")
                                .font(.system(size: 16))
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            // Component will be replaced by IncludeConverter
                            // include: included_1
                            // data: {"title":"@{userName}","message":"@{mainStatus}","count":"@{mainCount}"}
                            Included1View(data: ["title": viewModel.data.userName, "message": viewModel.data.mainStatus, "count": viewModel.data.mainCount])
                                .id("\(viewModel.data.userName)_\(viewModel.data.mainStatus)_\(viewModel.data.mainCount)")
                        }
                    }
                        .frame(maxWidth: .infinity)
                }
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .padding(20)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            // >>> GENERATED_CODE_END
        }
    }
}
