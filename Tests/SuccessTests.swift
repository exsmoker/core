import XCTest
@testable import Core

final class SuccessTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testRate() {
        XCTAssertEqual(0, smoke.success)
        smoke.info.cravings = [.init(.none, nil)]
        XCTAssertEqual(0, smoke.success)
        smoke.info.cravings = [.init(.none, .c02)]
        XCTAssertEqual(1, smoke.success)
        smoke.info.cravings = [.init(.none, .c02), .init(.none, nil)]
        XCTAssertEqual(0.5, smoke.success)
    }
}
