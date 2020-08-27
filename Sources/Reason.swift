import Foundation

public enum Reason: CaseIterable {
    case
    health_respiratory
    
    public var image: String {
        "reason_\(self)"
    }
    
    public var title: String {
        "Reason.title.\(self)"
    }
    
    public var subtitle: String {
        "Reason.subtitle.\(self)"
    }
    
    public var description: String {
        "Reason.description.\(self)"
    }
}
