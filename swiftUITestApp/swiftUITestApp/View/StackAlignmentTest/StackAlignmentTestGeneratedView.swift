import SwiftUI
import SwiftJsonUI
import Combine

struct StackAlignmentTestGeneratedView: View {
    @EnvironmentObject var viewModel: StackAlignmentTestViewModel
    @StateObject private var dynamicViewModel = DynamicViewModel(jsonName: "stack_alignment_test")
    
    var body: some View {
        if ViewSwitcher.isDynamicMode {
            DynamicView(jsonName: "stack_alignment_test", viewId: "stack_alignment_test_view", data: viewModel.data.toDictionary(viewModel: viewModel))
                .environmentObject(dynamicViewModel)
        } else {
            // Generated SwiftUI code from stack_alignment_test.json
            // This will be updated when you run 'sjui build'
            // >>> GENERATED_CODE_START
            AdvancedKeyboardAvoidingScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("VStack Alignment Tests")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.bottom, 20)
                        VStack(alignment: .center, spacing: 0) {
                            HStack {
                                Text("alignLeft in VStack")
                                .padding(8)
                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                            }.frame(maxWidth: .infinity, alignment: .leading)
                            HStack {
                                Text("centerHorizontal in VStack")
                                .padding(8)
                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                            }.frame(maxWidth: .infinity, alignment: .center)
                            HStack {
                                Text("alignRight in VStack")
                                .padding(8)
                                .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                            }.frame(maxWidth: .infinity, alignment: .trailing)
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 150)
                            .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196))
                        Text("HStack Alignment Tests")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.top, 30)
                            .padding(.bottom, 20)
                        HStack(alignment: .center, spacing: 0) {
                            VStack {
                                Text("Top")
                                .padding(8)
                                .background(Color(red: 1.0, green: 0.8156862745098039, blue: 0.8156862745098039))
                            }.frame(maxHeight: .infinity, alignment: .top)
                            VStack {
                                Text("Center")
                                .padding(8)
                                .background(Color(red: 0.8156862745098039, green: 1.0, blue: 0.8156862745098039))
                            }.frame(maxHeight: .infinity, alignment: .center)
                            VStack {
                                Text("Bottom")
                                .padding(8)
                                .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 1.0))
                            }.frame(maxHeight: .infinity, alignment: .bottom)
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(Color(red: 0.8156862745098039, green: 0.8156862745098039, blue: 0.8156862745098039))
                        Text("HStack with Horizontal Position")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.top, 30)
                            .padding(.bottom, 20)
                        HStack(alignment: .top, spacing: 0) {
                            Text("alignLeft")
                                .padding(8)
                                .background(Color(red: 1.0, green: 0.8784313725490196, blue: 0.8784313725490196))
                            Spacer()
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                        HStack(alignment: .top, spacing: 0) {
                            Spacer()
                            Text("centerHorizontal")
                                .padding(8)
                                .background(Color(red: 0.8784313725490196, green: 1.0, blue: 0.8784313725490196))
                            Spacer()
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725))
                            .padding(.top, 10)
                        HStack(alignment: .top, spacing: 0) {
                            Spacer()
                            Text("alignRight")
                                .padding(8)
                                .background(Color(red: 0.8784313725490196, green: 0.8784313725490196, blue: 1.0))
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color(red: 0.6274509803921569, green: 0.6274509803921569, blue: 0.6274509803921569))
                            .padding(.top, 10)
                        Text("VStack with Vertical Position")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                            .padding(.top, 30)
                            .padding(.bottom, 20)
                        VStack(alignment: .center, spacing: 0) {
                            HStack {
                                Text("alignTop")
                                .padding(8)
                                .background(Color(red: 1.0, green: 0.9411764705882353, blue: 0.9411764705882353))
                            }.frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.5647058823529412, green: 0.5647058823529412, blue: 0.5647058823529412))
                        VStack(alignment: .center, spacing: 0) {
                            Spacer()
                            HStack {
                                Text("centerVertical")
                                .padding(8)
                                .background(Color(red: 0.9411764705882353, green: 1.0, blue: 0.9411764705882353))
                            }.frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255))
                            .padding(.top, 10)
                        VStack(alignment: .center, spacing: 0) {
                            Spacer()
                            HStack {
                                Text("alignBottom")
                                .padding(8)
                                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 1.0))
                            }.frame(maxWidth: .infinity, alignment: .center)
                            Spacer(minLength: 0)
                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color(red: 0.4392156862745098, green: 0.4392156862745098, blue: 0.4392156862745098))
                            .padding(.top, 10)
                        Spacer(minLength: 0)
                    }
                        .padding(20)
                        .frame(maxWidth: .infinity)
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
            // >>> GENERATED_CODE_END
        }
    }
}
