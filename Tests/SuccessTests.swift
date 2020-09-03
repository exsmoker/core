import XCTest
@testable import Core

final class SuccessTests: XCTestCase {
    private var smoke: Smoke!
    private var user: User!
    
    override func setUp() {
        smoke = .init()
        user = .init()
    }
    
    func testRate() {
        XCTAssertEqual(0, smoke.success)
        smoke.info.cravings = [.init(nil)]
        XCTAssertEqual(0, smoke.success)
        smoke.info.cravings = [.init(.c02)]
        XCTAssertEqual(1, smoke.success)
        smoke.info.cravings = [.init(.c02), .init(nil)]
        XCTAssertEqual(0.5, smoke.success)
    }
}
