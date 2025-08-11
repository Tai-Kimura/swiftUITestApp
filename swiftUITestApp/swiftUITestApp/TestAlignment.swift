import SwiftUI

struct TestAlignmentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Test 1: ZStack with alignment
            ZStack(alignment: .topLeading) {
                Color.gray.opacity(0.3)
                Text("Top Leading")
                    .background(Color.red.opacity(0.5))
            }
            .frame(height: 100)
            
            // Test 2: ZStack with alignment and explicit frame
            ZStack(alignment: .bottomTrailing) {
                Color.gray.opacity(0.3)
                Text("Bottom Trailing")
                    .background(Color.blue.opacity(0.5))
            }
            .frame(height: 100)
            
            // Test 3: What we're generating
            ZStack(alignment: .topTrailing) {
                Text("Our Code")
                    .background(Color.green.opacity(0.5))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(Color.gray.opacity(0.3))
        }
        .padding()
    }
}