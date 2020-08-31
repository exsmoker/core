import XCTest
@testable import Core

final class CigarettesTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testEmpty() {
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cigarettes(.hours))
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cigarettes(.days))
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cigarettes(.weeks))
    }
    
    func testOne() {
        smoke.info.hits = [.init(.none, date: .init())]
        XCTAssertEqual([0, 0, 0, 0, 1], smoke.cigarettes(.days))
    }
    
    func testOutsideRange() {
        smoke.info.hits = [.init(.none, date: .init(timeIntervalSince1970: 0))]
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cigarettes(.days))
    }
    
    func testRangeWithWeeks() {
        smoke.info.hits = [.init(.none, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 5), to: .init())!),
                           .init(.none, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 4), to: .init())!),
                           .init(.none, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 3), to: .init())!),
                           .init(.none, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 2), to: .init())!),
                           .init(.none, date: Calendar.current.date(byAdding: .day, value: -6, to: .init())!)]
        XCTAssertEqual([0, 0, 0, 0, 1], smoke.cigarettes(.weeks))
    }
}
