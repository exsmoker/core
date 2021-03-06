import XCTest
@testable import Core

final class SmokeTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testStreak() {
        smoke.info.hits = [.init(.none, date: .init(timeIntervalSinceNow: -500))]
        XCTAssertEqual("8m", smoke.streak)
    }
}
