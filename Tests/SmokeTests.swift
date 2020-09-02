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
    
    func testEquals() {
        var info = Smoke.Info()
        XCTAssertEqual(Smoke.Info(), info)
        info.hits = []
        info.cravings = [.init(nil)]
        XCTAssertEqual(Smoke.Info(), info)
        info.hits = [.init(.angry), .init(.anxious)]
        info.cravings = [.init(.c02), .init(.none)]
        XCTAssertEqual(Smoke.Info(), info)
        info.hits = []
        XCTAssertEqual(Smoke.Info(), info)
        info.cravings = [.init(nil), .init(.c02), .init(.none)]
        XCTAssertEqual(Smoke.Info(), info)
    }
}
