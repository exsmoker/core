import Foundation

public enum Reason: Int, Codable, CaseIterable, Identifiable {
    case
    respiratory,
    smile,
    c02
    
    public var id: Self {
        self
    }
    
    public var image: String {
        "reason_\(self)"
    }
    
    public var name: String {
        "Reason.name.\(self)"
    }
    
    public var description: String {
        "Reason.description.\(self)"
    }
    
    public var category: Category {
        switch self {
        case .respiratory: return .health
        case .smile: return .aesthetic
        case .c02: return .environment
        }
    }
}
