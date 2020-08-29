import Foundation

extension Reason {
    public enum Category: CaseIterable {
        case
        health,
        aesthetic
        
        public var name: String {
            "Category.name.\(self)"
        }
    }
}
