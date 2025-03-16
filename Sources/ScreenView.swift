import Foundation

import SwiftUI

public protocol ScreenView: View {
    var title: String { get }
}

extension ScreenView {
    var title: String {
        "Screen Title"
    }
}
