//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The event data structure */
public class ProductOfferingDeleteEventPayload: APIModel {

    public var productOffering: ProductOffering?

    public init(productOffering: ProductOffering? = nil) {
        self.productOffering = productOffering
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        productOffering = try container.decodeIfPresent("productOffering")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(productOffering, forKey: "productOffering")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductOfferingDeleteEventPayload else { return false }
      guard self.productOffering == object.productOffering else { return false }
      return true
    }

    public static func == (lhs: ProductOfferingDeleteEventPayload, rhs: ProductOfferingDeleteEventPayload) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
