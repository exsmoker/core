import Foundation

public final class Smoke {
    public var hits = [Hit]()
    private let formatter = DateComponentsFormatter()
    
    public init() {
        formatter.allowedUnits = [.day, .hour, .minute]
        formatter.unitsStyle = .abbreviated
    }
    
    public var streak: String {
        formatter.string(from: hits.last!.date, to: .init())!
    }
}
