import SwiftUI

class StartScreenViewModel {
    var onGoSignUp: (() -> Void)?
    var onGoLogin: (() -> Void)?
}

struct StartScreenView: ScreenView {
    @State var viewModel: StartScreenViewModel

    var body: some View {
        VStack(spacing: 40) {
            Text("OnboardingScreenView")
            
            Button("Go Sign Up") {
                viewModel.onGoSignUp?()
            }
            
            Button("Go Login") {
                viewModel.onGoLogin?()
            }
        }
    }
}

#Preview {
    StartScreenView(viewModel: StartScreenViewModel())
}
