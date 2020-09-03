import Foundation

public final class Smoke {
    public var info = Info()
    private let formatter = DateComponentsFormatter()
    
    public init() {
        formatter.allowedUnits = [.day, .hour, .minute]
        formatter.unitsStyle = .abbreviated
    }
    
    public var streak: String {
        formatter.string(from: info.hits.last!.date, to: .init())!
    }
    
    public func cigarettes(_ range: Range) -> [Double] {
        range.filter(info.hits)
    }
    
    public func cravings(_ range: Range) -> [Double] {
        range.filter(info.cravings)
    }
    
    public func savings(_ user: User) -> Double {
        .init(max(expectedHits(user) - info.hits.count, 0)) * user.price
    }
    
    public var success: Double {
        info.cravings.isEmpty ? 0 : .init(info.cravings.filter { $0.reason != nil }.count) / .init(info.cravings.count)
    }
    
    private func expectedHits(_ user: User) -> Int {
        info.hits.first.flatMap {
            Calendar.current.dateComponents([.day], from: $0.date, to: .init()).day
        }.map {
            user.quantity * ($0 + 1)
        } ?? 0
    }
}
