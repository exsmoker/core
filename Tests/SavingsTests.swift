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
        smoke.info.hits = [.init(.none)]
        XCTAssertEqual(0, smoke.savings(user))
    }
    
    func testOne() {
        user.quantity = 1
        user.price = 1
        smoke.info.hits = [.init(.none, date: Calendar.current.date(byAdding: .day, value: -2, to: .init())!)]
        XCTAssertEqual(1, smoke.savings(user))
    }
}
