// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "sls",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "sls", targets: ["sls"])
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
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "Sources",
            sources: [
                "SwiftList.swift",
                "Configuration/DisplayOptions.swift",
                "Configuration/SortOption.swift",
                "Models/FileRepresentation.swift",
                "Utilities/FileManagerHelper.swift",
                "Utilities/TerminalColors.swift",
            ]
        ),
        .testTarget(
            name: "SwiftListTests",
            dependencies: [
                "sls",
                .product(name: "Testing", package: "swift-testing"),
            ]
        ),
    ]
)
