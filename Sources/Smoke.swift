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
}
