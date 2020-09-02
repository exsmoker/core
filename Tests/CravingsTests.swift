import XCTest
@testable import Core

final class CravingsTests: XCTestCase {
    private var smoke: Smoke!
    
    override func setUp() {
        smoke = .init()
    }
    
    func testEmpty() {
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cravings(.hours))
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cravings(.days))
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cravings(.weeks))
    }
    
    func testOne() {
        smoke.info.cravings = [.init(nil, date: .init())]
        XCTAssertEqual([0, 0, 0, 0, 1], smoke.cravings(.days))
    }
    
    func testOutsideRange() {
        smoke.info.cravings = [.init(nil, date: .init(timeIntervalSince1970: 0))]
        XCTAssertEqual([0, 0, 0, 0, 0], smoke.cravings(.days))
    }
    
    func testRangeWithWeeks() {
        smoke.info.cravings = [.init(nil, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 5), to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 4), to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 3), to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .day, value: -5 * (7 * 2), to: .init())!),
                           .init(nil, date: .init())]
        XCTAssertEqual([0, 0, 0, 0, 1], smoke.cravings(.weeks))
    }
    
    func testClamp() {
        smoke.info.cravings = [.init(nil, date: Calendar.current.date(byAdding: .hour, value: -1, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -1, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -2, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -3, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -3, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -1, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -6, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -7, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -8, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -1, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -3, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -4, to: .init())!),
                           .init(nil, date: Calendar.current.date(byAdding: .hour, value: -4, to: .init())!),]
        XCTAssertEqual([0.5, 0.75, 0.25, 1, 0], smoke.cravings(.hours))
    }
}
