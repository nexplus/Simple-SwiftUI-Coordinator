import Combine
import Foundation

final class AuthenticationManager: ObservableObject {
    static let shared = AuthenticationManager()

    @Published private(set) var isAuthenticated: Bool = false

    private init() {
    }

    func login() {
        isAuthenticated = true
    }
}
