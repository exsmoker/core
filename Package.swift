// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]),
    ],
    targets: [
        .target(
            name: "Core",
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Core"],
            path: "Tests"),
    ]
)
