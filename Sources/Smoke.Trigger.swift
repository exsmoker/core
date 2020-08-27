import Foundation

extension Smoke {
    public enum Trigger: String, Codable, CaseIterable {
        case
        somebody,
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
