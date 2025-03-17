import SwiftUI

struct Tab2Screen: ScreenView {
    var body: some View {
        VStack(spacing: 40) {
            Text("Tab 2")
        }
        .background(.green)
    }
}

#Preview {
    Tab2Screen()
}
