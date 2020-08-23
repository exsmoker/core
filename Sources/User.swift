import Foundation

public struct User: Codable, Equatable {
    public var name = ""
    public var location = ""
    public var premium = false
    public var rated = false
    public var created = Date()
    public var price = Double()
    public var quantity = Int()
    public var currency = Currency.euro
    
    public init() { }
    
    public func hash(into: inout Hasher) { }
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        true
    }
}
