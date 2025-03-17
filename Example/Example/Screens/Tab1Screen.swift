import SwiftUI

struct Tab1Screen: ScreenView {
    var body: some View {
        VStack(spacing: 40) {
            Text("Tab 1")
        }
        .background(.blue)
    }
}

#Preview {
    Tab1Screen()
}
