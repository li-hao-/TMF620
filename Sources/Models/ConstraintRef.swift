//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Constraint reference. The Constraint resource represents a policy/rule applied to an entity or entity spec. */
public class ConstraintRef: APIModel {

    /** unique identifier */
    public var id: String

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** The actual type of the target instance when needed for disambiguation. */
    public var alphareferredType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** Hyperlink reference */
    public var href: URL?

    /** Name of the related entity. */
    public var name: String?

    /** constraint version */
    public var version: String?

    public init(id: String, alphabaseType: String? = nil, alphareferredType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, href: URL? = nil, name: String? = nil, version: String? = nil) {
        self.id = id
        self.alphabaseType = alphabaseType
        self.alphareferredType = alphareferredType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.href = href
        self.name = name
        self.version = version
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
        version = try container.decodeIfPresent("version")
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
        try container.encodeIfPresent(version, forKey: "version")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ConstraintRef else { return false }
      guard self.id == object.id else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphareferredType == object.alphareferredType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.href == object.href else { return false }
      guard self.name == object.name else { return false }
      guard self.version == object.version else { return false }
      return true
    }

    public static func == (lhs: ConstraintRef, rhs: ConstraintRef) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
