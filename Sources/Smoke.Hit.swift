import Foundation

extension Smoke {
    public struct Hit: Codable {
        public let trigger: Trigger
        public let date: Date
        
        public init(_ trigger: Trigger) {
            self.trigger = trigger
            date = .init()
        }
        
        init(_ trigger: Trigger, date: Date) {
            self.trigger = trigger
            self.date = date
        }
    }
}
