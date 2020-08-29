import Foundation

extension Reason {
    public enum Category: CaseIterable {
        case
        health,
        aesthetic,
        environment
        
        public var name: String {
            "Category.name.\(self)"
        }
    }
}
