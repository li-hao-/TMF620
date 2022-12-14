//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** An amount in a given unit */
public class Quantity: APIModel {

    /** Numeric value in a given unit */
    public var amount: Float?

    /** Unit */
    public var units: String?

    public init(amount: Float? = nil, units: String? = nil) {
        self.amount = amount
        self.units = units
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        amount = try container.decodeIfPresent("amount")
        units = try container.decodeIfPresent("units")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(amount, forKey: "amount")
        try container.encodeIfPresent(units, forKey: "units")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Quantity else { return false }
      guard self.amount == object.amount else { return false }
      guard self.units == object.units else { return false }
      return true
    }

    public static func == (lhs: Quantity, rhs: Quantity) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
