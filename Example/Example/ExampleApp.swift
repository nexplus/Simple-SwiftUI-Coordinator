import Combine
import SwiftUI

@main
struct ExampleApp: App {
    @State var rootCoordinator = ApplicationRootCoordinator(childCoordinator: MainNavigationCoordinator())

    private var cancellables: Set<AnyCancellable> = []

    var body: some Scene {
        WindowGroup {
            rootCoordinator.view()
        }
    }

    init() {
        AuthenticationManager.shared.$isAuthenticated
            .dropFirst()
            .sink { [weak rootCoordinator] value in
                if value {
                    rootCoordinator?.childCoordinator = MainTabCoordinator()
                } else {
                    rootCoordinator?.childCoordinator = MainNavigationCoordinator()
                }
            }
            .store(in: &cancellables)
    }
}
