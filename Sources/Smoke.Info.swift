import Foundation

extension Smoke {
    public struct Info: Codable, Equatable {
        public var hits = [Hit]()
        public var cravings = [Craving]()
        
        public func hash(into: inout Hasher) { }
        
        public static func == (lhs: Self, rhs: Self) -> Bool {
            true
        }
    }
}
