// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Simple-SwiftUI-Coordinator",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "Simple-SwiftUI-Coordinator", targets: ["Simple-SwiftUI-Coordinator"])
    ],
    targets: [
        .target(name: "Simple-SwiftUI-Coordinator")
    ]
)
