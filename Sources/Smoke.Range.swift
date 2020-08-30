import Foundation

extension Smoke {
    public enum Range {
        case
        hours,
        days,
        weeks
        
        public var title: String {
            "Range.name.\(self)"
        }
        
        var since: Date {
            switch self {
            case .hours: return Calendar.current.date(byAdding: .hour, value: -6, to: .init())!
            case .days: return Calendar.current.date(byAdding: .day, value: -6, to: .init())!
            case .weeks: return Calendar.current.date(byAdding: .weekOfMonth, value: -6, to: .init())!
            }
        }
    }
}
