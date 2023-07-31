import XCTest
@testable import StringBuilder

final class StringBuilderTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StringBuilder().text, "Hello, World!")
    }
}
