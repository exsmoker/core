import Foundation

extension Smoke {
    public enum Trigger: Int, Codable, CaseIterable, Identifiable {
        case
        none,
        people,
        offered,
        bored,
        anxious,
        nervous,
        want,
        dont,
        cold,
        tired,
        angry,
        sad,
        scared,
        hungry,
        lonely,
        ate
        
        public var id: Self {
            self
        }
        
        public var title: String {
            "Trigger.title.\(self)"
        }
    }
}
