import Foundation

import SwiftUI

open class ApplicationRootCoordinator<T: BaseCoordinator>: BaseCoordinator {
    var childCoordinator: T

    init(childCoordinator: T) {
        self.childCoordinator = childCoordinator
    }

    public func view() -> some View {
        childCoordinator.view()
    }
}
