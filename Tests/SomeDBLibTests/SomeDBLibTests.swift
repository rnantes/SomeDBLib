import XCTest
@testable import SomeDBLib

final class SomeDBLibTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SomeDBLib().text, "Hello, World!")
    }

    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SomeDBLib().foo(), "bar")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
