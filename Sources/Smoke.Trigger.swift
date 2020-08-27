import Foundation

extension Smoke {
    public enum Trigger: Int, Codable, CaseIterable {
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
        
        public var title: String {
            "Trigger.title.\(self)"
        }
    }
}
