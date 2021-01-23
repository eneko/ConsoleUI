// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ConsoleUI",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "consoleui", targets: ["ConsoleUI"])
    ],
    targets: [
        .target(name: "ConsoleUI", dependencies: []),
        .testTarget(name: "ConsoleUITests", dependencies: ["ConsoleUI"])
    ]
)
