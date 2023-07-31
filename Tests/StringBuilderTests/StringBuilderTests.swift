import XCTest
@testable import StringBuilder

final class StringBuilderTests: XCTestCase {
    
    @StringBuilder var welcomeText: String {
        for i in (1...3).reversed() {
            "\(i)..."
        }
        StringGroup() {
            ""
            "=============================="
            ""
        }
        StringGroup(separator: " ") {
            "Welcome"
            "to"
            "StringBuilder!"
        }
        "With StringBuilder you can build string with the unique syntax of @resultBuilder!"
        StringGroup() {
            ""
            "=============================="
        }
    }
    
    let welcomeTextLiteral: String = """
3...
2...
1...

==============================

Welcome to StringBuilder!
With StringBuilder you can build string with the unique syntax of @resultBuilder!

==============================
"""
    
    func testWelcomeTextWithStringBuilder() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(welcomeText, welcomeTextLiteral)
    }
}
