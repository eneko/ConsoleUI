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
    dependencies: [
        .package(url: "https://github.com/eneko/Stripes", from: "0.2.0")
    ],
    targets: [
        .target(name: "ConsoleUI", dependencies: ["Stripes"]),
        .testTarget(name: "ConsoleUITests", dependencies: ["ConsoleUI"])
    ]
)
