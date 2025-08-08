// swift-tools-version:6.0

//===----------------------------------------------------------------------===//
//
// This source file is part of the example package playingcard open source project
//
// Copyright (c) 2015-2025 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

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
