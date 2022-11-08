//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The event data structure */
public class CatalogStateChangeEventPayload: APIModel {

    public var catalog: Catalog?

    public init(catalog: Catalog? = nil) {
        self.catalog = catalog
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        catalog = try container.decodeIfPresent("catalog")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(catalog, forKey: "catalog")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CatalogStateChangeEventPayload else { return false }
      guard self.catalog == object.catalog else { return false }
      return true
    }

    public static func == (lhs: CatalogStateChangeEventPayload, rhs: CatalogStateChangeEventPayload) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
