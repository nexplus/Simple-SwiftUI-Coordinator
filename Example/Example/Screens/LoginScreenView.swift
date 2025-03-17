import SwiftUI

struct LoginScreenView: ScreenView {
    var onGoRestorePassword: (() -> Void)?

    var body: some View {
        VStack(spacing: 40) {
            Text("LoginScreenView")

            Button("Login") {
                AuthenticationManager.shared.login()
            }

            Button("Forgot password?") {
                onGoRestorePassword?()
            }
        }
    }
}

#Preview {
    LoginScreenView()
}
