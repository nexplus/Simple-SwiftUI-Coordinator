import Foundation

import SwiftUI

@Observable
final class MainNavigationCoordinator: NavigationBaseCoordinator {
    var navigationPath = [PartialKeyPath<MainNavigationCoordinator>]()

    @ObservationIgnored
    lazy var rootScreenView: AnyView = {
        let startScreenViewModel = StartScreenViewModel()
        startScreenViewModel.onGoSignUp = { [weak self] in
            self?.pushToStack(routeId: \.signUpScreen)
        }
        startScreenViewModel.onGoLogin = { [weak self] in
            self?.pushToStack(routeId: \.loginScreen)
        }
        return AnyView(StartScreenView(viewModel: startScreenViewModel))
    }()

    @ObservationIgnored
    lazy var loginScreen: AnyView = { AnyView(LoginScreenView { [weak self] in
        self?.pushToStack(routeId: \.restorePasswordScreen)
    }) }()
    @ObservationIgnored
    lazy var signUpScreen: AnyView = AnyView(SignUpScreenView())
    @ObservationIgnored
    lazy var restorePasswordScreen: AnyView = AnyView(RestorePasswordScreenView())

    init() {
    }
}
