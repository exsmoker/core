import Foundation

extension Smoke {
    public struct Craving: Codable {
        public let reason: Reason?
        public let trigger: Trigger
        public let date: Date
        
        public init(_ reason: Reason?, _ trigger: Trigger) {
            self.reason = reason
            self.trigger = trigger
            date = .init()
        }
        
        init(_ trigger: Trigger, _ reason: Reason?, _ date: Date = .init()) {
            self.trigger = trigger
            self.reason = reason
            self.date = date
        }
    }
}
