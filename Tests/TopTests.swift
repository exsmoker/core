import XCTest
@testable import Core

final class TopTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testRating() {
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(.none, nil)]
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(.none, .none)]
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(.none, .c02)]
        XCTAssertEqual(1, smoke.top.count)
        XCTAssertEqual(.c02, smoke.top[0].reason)
        XCTAssertEqual(1, smoke.top[0].percent)
        smoke.info.cravings = [.init(.none, .c02), .init(.none, .respiratory), .init(.none, .smile), .init(.none, .c02)]
        XCTAssertEqual(3, smoke.top.count)
        XCTAssertEqual(.c02, smoke.top[0].reason)
        XCTAssertEqual(0.5, smoke.top[0].percent)
        XCTAssertEqual(.smile, smoke.top[1].reason)
        XCTAssertEqual(0.25, smoke.top[1].percent)
        XCTAssertEqual(.respiratory, smoke.top[2].reason)
        XCTAssertEqual(0.25, smoke.top[2].percent)
    }
}
