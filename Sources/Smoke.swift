import Foundation

public final class Smoke {
    public var hits = [Date]()
    private let formatter = DateComponentsFormatter()
    
    public init() {
        formatter.allowedUnits = [.day, .hour, .minute]
        formatter.unitsStyle = .abbreviated
    }
    
    public var streak: String {
        formatter.string(from: hits.last!, to: .init())!
    }
}
