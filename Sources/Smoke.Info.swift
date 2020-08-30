import Foundation

extension Smoke {
    public struct Info: Codable, Equatable {
        public var hits = [Hit]()
        public var reasons = [Reason]()
        public var useful = [Bool]()
        
        public func hash(into: inout Hasher) { }
        
        public static func == (lhs: Self, rhs: Self) -> Bool {
            true
        }
    }
}
