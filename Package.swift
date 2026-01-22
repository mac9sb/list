// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "sls",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "sls", targets: ["sls"]),
        .library(name: "SwiftListCore", targets: ["SwiftListCore"]),
        .library(name: "SwiftListCLI", targets: ["SwiftListCLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.4.3"),
        .package(url: "https://github.com/swiftlang/swift-testing", from: "0.11.0"),
    ],
    targets: [
        .executableTarget(
            name: "sls",
            dependencies: [
                "SwiftListCLI"
            ],
            path: "Sources/SwiftList"
        ),
        .target(
            name: "SwiftListCLI",
            dependencies: [
                "SwiftListCore",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(
            name: "SwiftListCore",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .testTarget(
            name: "SwiftListTests",
            dependencies: [
                "SwiftListCore",
                "SwiftListCLI",
                .product(name: "Testing", package: "swift-testing"),
            ]
        ),
    ]
)
