//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Related Party reference. A related party defines party or party role linked to a specific entity. */
public class RelatedParty: APIModel {

    /** The actual type of the target instance when needed for disambiguation. */
    public var alphareferredType: String

    /** unique identifier */
    public var id: String

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** Hyperlink reference */
    public var href: URL?

    /** Name of the related entity. */
    public var name: String?

    /** Role played by the related party */
    public var role: String?

    public init(alphareferredType: String, id: String, alphabaseType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, href: URL? = nil, name: String? = nil, role: String? = nil) {
        self.alphareferredType = alphareferredType
        self.id = id
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.href = href
        self.name = name
        self.role = role
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphareferredType = try container.decode("@referredType")
        id = try container.decode("id")
        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        href = try container.decodeIfPresent("href")
        name = try container.decodeIfPresent("name")
        role = try container.decodeIfPresent("role")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(alphareferredType, forKey: "@referredType")
        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(role, forKey: "role")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RelatedParty else { return false }
      guard self.alphareferredType == object.alphareferredType else { return false }
      guard self.id == object.id else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.href == object.href else { return false }
      guard self.name == object.name else { return false }
      guard self.role == object.role else { return false }
      return true
    }

    public static func == (lhs: RelatedParty, rhs: RelatedParty) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}