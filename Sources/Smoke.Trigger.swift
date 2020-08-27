import Foundation

extension Smoke {
    public enum Trigger: String, Codable, CaseIterable {
        case
        somebodySmoking,
        bored,
        anxious,
        nervous,
        feelLike,
        doNotKnow,
        noReason,
        cold,
        tired
        
        var title: String {
            "Trigger.title.\(self)"
        }
    }
}
