import XCTest
@testable import Core

final class TrendsTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testEmpty() {
        XCTAssertTrue(smoke.trends.isEmpty)
        smoke.info.hits = [.init(.none)]
        XCTAssertTrue(smoke.trends.isEmpty)
        smoke.info.cravings = [.init(nil, .none)]
        XCTAssertTrue(smoke.trends.isEmpty)
    }
    
    func testCombine() {
        smoke.info.hits = [.init(.angry)]
        smoke.info.cravings = [.init(nil, .anxious)]
        XCTAssertEqual(2, smoke.trends.count)
        XCTAssertEqual(.angry, smoke.trends[0].trigger)
        XCTAssertEqual(0.5, smoke.trends[0].percent)
        XCTAssertEqual(.anxious, smoke.trends[1].trigger)
        XCTAssertEqual(0.5, smoke.trends[1].percent)
    }
    
    func testSort() {
        smoke.info.hits = [.init(.angry), .init(.anxious), .init(.ate), .init(.angry)]
        XCTAssertEqual(3, smoke.trends.count)
        XCTAssertEqual(.angry, smoke.trends[0].trigger)
        XCTAssertEqual(0.5, smoke.trends[0].percent)
        XCTAssertEqual(.ate, smoke.trends[1].trigger)
        XCTAssertEqual(0.25, smoke.trends[1].percent)
        XCTAssertEqual(.anxious, smoke.trends[2].trigger)
        XCTAssertEqual(0.25, smoke.trends[2].percent)
    }
}
