import XCTest
@testable import Core

final class SavingsTests: XCTestCase {
    private var smoke: Smoke!
    private var user: User!
    
    override func setUp() {
        smoke = .init()
        user = .init()
    }
    
    func testFirst() {
        XCTAssertEqual(0, smoke.savings(user))
    }
}
