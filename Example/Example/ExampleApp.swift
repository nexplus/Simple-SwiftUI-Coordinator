import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ApplicationRootCoordinator(childCoordinator: MainNavigationCoordinator()).view()
        }
    }
}
