import XCTest
@testable import Core

final class TrendsTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testRating() {
        XCTAssertTrue(smoke.trends.isEmpty)

    }
}
