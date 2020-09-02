import Foundation

extension Smoke {
    public struct Craving: Codable {
        public let reason: Reason?
        public let date: Date
        
        public init(_ reason: Reason?) {
            self.reason = reason
            date = .init()
        }
        
        init(_ reason: Reason?, date: Date) {
            self.reason = reason
            self.date = date
        }
    }
}
