import Foundation

import SwiftUI

protocol NavigationBaseCoordinator: BaseCoordinator {
    var navigationPath: [PartialKeyPath<Self>] { get set }
    var rootScreenView: AnyView { get }

    func pushToStack(routeId: PartialKeyPath<Self>)
    func popFromStack()
}

extension NavigationBaseCoordinator {
    func view() -> some View {
        NavigationBaseCoordinatorView(coordinator: self)
    }

    func pushToStack(routeId: PartialKeyPath<Self>) {
        navigationPath.append(routeId)
    }

    func popFromStack() {
        navigationPath.removeLast()
    }
}

struct NavigationBaseCoordinatorView<T: NavigationBaseCoordinator>: View {
    @State var coordinator: T

    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            coordinator.rootScreenView
                .navigationDestination(for: PartialKeyPath<T>.self) { value in
                    coordinator[keyPath: value] as! AnyView
                }
        }
    }
}
