// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SceneKitDSL",
    products: [
        .library(
            name: "SceneKitDSL",
            targets: ["SceneKitDSL"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SceneKitDSL",
            dependencies: [],
            path: ".")
    ]
)
