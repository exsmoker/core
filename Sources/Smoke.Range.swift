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
        
        func filter(_ hits: [Hit]) -> [Double] {
            var items = self.items
            hits.map {
                components($0.date)
            }.forEach { hit in
                items.firstIndex { $0.0 == hit }.map {
                    items[$0].1 += 1
                }
            }
            
            let max = items.max { $0.1 < $1.1 }!.1
            return items.map {
                max == 0 ? 0 : $0.1 / max
            }
        }
        
        private func components(_ date: Date) -> DateComponents {
            Calendar.current.dateComponents(components, from: date)
        }
        
        private var items: [(DateComponents, Double)] {
            (0 ... 4).reversed().map {
                Calendar.current.date(byAdding: component, value: -$0, to: .init())!
            }.map(components).reduce(into: []) {
                $0.append(($1, 0))
            }
        }
        
        private var components: Set<Calendar.Component> {
            switch self {
            case .hours: return [.hour, .day, .month, .year]
            case .days: return [.day, .month, .year]
            case .weeks: return [.weekOfMonth, .month, .year]
            }
        }
        
        private var component: Calendar.Component {
            switch self {
            case .hours: return .hour
            case .days: return .day
            case .weeks: return .weekOfMonth
            }
        }
    }
}
