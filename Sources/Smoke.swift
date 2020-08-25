import Foundation

public final class Smoke {
    public var hits = [Date]()
    private let formatter = DateComponentsFormatter()
    
    public init() {
        formatter.allowedUnits = [.day, .hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
    }
    
    public var stroke: String {
        formatter.string(from: hits.last!, to: .init())!
    }
}
