import Foundation

import SwiftUI

public protocol BaseCoordinator: AnyObject {
    associatedtype V: View
    
    func view() -> V
}
