// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SomeDBLib",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SomeDBLib",
            targets: ["SomeDBLib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "GRDB", url: "https://github.com/groue/GRDB.swift.git", from: "5.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SomeDBLib",
            dependencies: [
                .product(name: "GRDB", package: "GRDB")
            ]),
        .testTarget(
            name: "SomeDBLibTests",
            dependencies: ["SomeDBLib"]),
    ]
)
