import Foundation

extension Smoke {
    public struct Trend: Identifiable {
        public let id = UUID()
        public let trigger: Trigger
        public let percent: Double
    }
}
