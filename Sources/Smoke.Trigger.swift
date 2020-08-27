import Foundation

extension Smoke {
    public enum Trigger: Int, Codable, CaseIterable, Identifiable {
        case
        people,
        offered,
        bored,
        anxious,
        nervous,
        want,
        dont,
        none,
        cold,
        tired
        
        public var id: Self {
            self
        }
        
        public var title: String {
            "Trigger.title.\(self)"
        }
    }
}
