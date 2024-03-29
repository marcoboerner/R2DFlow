// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "R2DFlow",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "R2DFlow",
            targets: ["R2DFlow"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/marcoboerner/OpenHelper.git", .upToNextMajor(from: "0.0.1"))
//        .package(path: "../OpenHelper")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "R2DFlow",
            dependencies: [
                .product(name: "OpenHelper", package: "OpenHelper")
            ]),
        .testTarget(
            name: "R2DFlowTests",
            dependencies: ["R2DFlow"],
            path: "./Example/Tests",
            exclude: ["./Info.plist"]
        )
    ]
)
