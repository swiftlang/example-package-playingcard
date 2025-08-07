// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "PlayingCard",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "PlayingCard", targets: ["PlayingCard"]),
    ],
    targets: [
        .target(
            name: "PlayingCard",
            dependencies: []),
        .testTarget(
            name: "PlayingCardTests",
            dependencies: ["PlayingCard"]),
    ]
)
