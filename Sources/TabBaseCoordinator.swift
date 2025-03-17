import Foundation

import SwiftUI

protocol TabBaseCoordinator: BaseCoordinator {
    var tabs: [(content: PartialKeyPath<Self>, button: PartialKeyPath<Self>)] { get }
}

extension TabBaseCoordinator {
    func view() -> some View {
        TabView {
            ForEach(0..<self.tabs.count, id: \.self) { index in
                (self[keyPath: self.tabs[index].content] as! AnyView)
                    .tabItem {
                        self[keyPath: self.tabs[index].button] as! AnyView
                    }
                    .tag(index)
            }
        }
    }
}
