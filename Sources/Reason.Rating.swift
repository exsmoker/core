import Foundation

extension Reason {
    public struct Rating: Identifiable {
        public let id = UUID()
        public let reason: Reason
        public let percent: Double
    }
}
