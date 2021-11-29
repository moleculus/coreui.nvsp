// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreUI",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "CoreUI", targets: ["CoreUI"])
    ],
    dependencies: [
        .package(name: "SnapKit", url: "https://github.com/SnapKit/SnapKit", .branch("develop"))
    ],
    targets: [
        .target(name: "CoreUI", dependencies: ["SnapKit"]),
        .testTarget(name: "CoreUITests", dependencies: ["CoreUI"])
    ]
)
