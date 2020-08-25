import XCTest
@testable import Core

final class SmokeTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testStreak() {
        smoke.hits = [.init(timeIntervalSinceNow: -500)]
        XCTAssertEqual("8m 20s", smoke.stroke)
    }
}
