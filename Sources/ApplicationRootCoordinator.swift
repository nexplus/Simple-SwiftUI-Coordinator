import Foundation

import SwiftUI

@Observable
final class ApplicationRootCoordinator<T: BaseCoordinator>: BaseCoordinator {
    var childCoordinator: any BaseCoordinator

    init(childCoordinator: T) {
        self.childCoordinator = childCoordinator
    }

    public func view() -> some View {
        AnyView(childCoordinator.view())
    }
}
