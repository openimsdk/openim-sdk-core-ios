// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "OpenIMSDKCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "OpenIMCore",
            targets: ["OpenIMCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenIMCore",
            path: "Framework/OpenIMCore.xcframework"
        )
    ]
)
