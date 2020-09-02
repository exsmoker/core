import Foundation

extension User {
    public enum Currency: String, Codable {
        case
        euro,
        dollar,
        pound
        
        public var symbol: String {
            switch self {
            case .euro: return "€"
            case .dollar: return "$"
            case .pound: return "£"
            }
        }
    }
}
