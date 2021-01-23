import XCTest
import class Foundation.Bundle

final class ConsoleUITests: XCTestCase {
    func testExample() throws {
        guard #available(macOS 10.13, *) else {
            return
        }

        let fooBinary = productsDirectory.appendingPathComponent("ConsoleUI")

        let process = Process()
        process.executableURL = fooBinary

        let pipe = Pipe()
        process.standardOutput = pipe

        try? FileManager.default.removeItem(atPath: "test.png")

        try process.run()
        process.waitUntilExit()

        XCTAssertTrue(FileManager.default.fileExists(atPath: "test.png"))
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
