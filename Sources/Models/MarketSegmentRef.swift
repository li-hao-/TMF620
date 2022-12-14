//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** provides references to the corresponding market segment as target of product offerings. A market segment is grouping of Parties, GeographicAreas, SalesChannels, and so forth. */
public class MarketSegmentRef: APIModel {

    /** Unique identifier of the market segment */
    public var id: String

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** (Class) type of the referred market segment */
    public var alphareferredType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** Reference of the market segment */
    public var href: String?

    /** Name of the market segment */
    public var name: String?

    public init(id: String, alphabaseType: String? = nil, alphareferredType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, href: String? = nil, name: String? = nil) {
        self.id = id
        self.alphabaseType = alphabaseType
        self.alphareferredType = alphareferredType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.href = href
        self.name = name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        alphabaseType = try container.decodeIfPresent("@baseType")
        alphareferredType = try container.decodeIfPresent("@referredType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        href = try container.decodeIfPresent("href")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphareferredType, forKey: "@referredType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(name, forKey: "name")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? MarketSegmentRef else { return false }
      guard self.id == object.id else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphareferredType == object.alphareferredType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.href == object.href else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: MarketSegmentRef, rhs: MarketSegmentRef) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
