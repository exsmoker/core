import Foundation

public enum Reason: CaseIterable, Identifiable {
    case
    health_respiratory
    
    public var id: Self {
        self
    }
    
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
