import XCTest
@testable import Core

final class TopTests: XCTestCase {
    private var smoke: Smoke!
    private var user: User!
    
    override func setUp() {
        smoke = .init()
        user = .init()
    }
    
    func testRating() {
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(nil)]
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(.none)]
        XCTAssertTrue(smoke.top.isEmpty)
        smoke.info.cravings = [.init(.c02)]
        XCTAssertEqual(1, smoke.top.count)
        XCTAssertEqual(.c02, smoke.top[0].reason)
        XCTAssertEqual(1, smoke.top[0].percent)
        smoke.info.cravings = [.init(.c02), .init(.respiratory), .init(.smile), .init(.c02)]
        XCTAssertEqual(3, smoke.top.count)
        XCTAssertEqual(.c02, smoke.top[0].reason)
        XCTAssertEqual(0.5, smoke.top[0].percent)
        XCTAssertEqual(.smile, smoke.top[1].reason)
        XCTAssertEqual(0.25, smoke.top[1].percent)
        XCTAssertEqual(.respiratory, smoke.top[2].reason)
        XCTAssertEqual(0.25, smoke.top[2].percent)
    }
}
