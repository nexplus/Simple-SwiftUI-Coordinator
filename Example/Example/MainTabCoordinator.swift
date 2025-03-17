import Foundation

import SwiftUI

final class MainTabCoordinator: TabBaseCoordinator {
    lazy var tab1Screen: AnyView = { AnyView(Tab1Screen()) }()
    lazy var tab2Screen: AnyView = { AnyView(Tab2Screen()) }()
    lazy var tab3Screen: AnyView = { AnyView(Tab3Screen()) }()

    lazy var tab1Button: AnyView = { AnyView(Text("Tab 1")) }()
    lazy var tab2Button: AnyView = { AnyView(Text("Tab 2")) }()
    lazy var tab3Button: AnyView = { AnyView(Text("Tab 3")) }()


    var tabs: [(content: PartialKeyPath<MainTabCoordinator>, button: PartialKeyPath<MainTabCoordinator>)] = [
        (content: \.tab1Screen, button: \.tab1Button),
        (content: \.tab2Screen, button: \.tab2Button),
        (content: \.tab3Screen, button: \.tab3Button)
    ]
}
