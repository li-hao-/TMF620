//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A relationship between two product Offerings. */
public class ProductOfferingRelationship: APIModel {

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

    /** unique identifier */
    public var id: String?

    /** Name of the related entity. */
    public var name: String?

    /** Type of relationship between product offerings such as requires, exchangableTo, optionalFor */
    public var relationshipType: String?

    /** The association role for the source product offering */
    public var role: String?

    public var validFor: TimePeriod?

    public init(alphabaseType: String? = nil, alphareferredType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, href: URL? = nil, id: String? = nil, name: String? = nil, relationshipType: String? = nil, role: String? = nil, validFor: TimePeriod? = nil) {
        self.alphabaseType = alphabaseType
        self.alphareferredType = alphareferredType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.href = href
        self.id = id
        self.name = name
        self.relationshipType = relationshipType
        self.role = role
        self.validFor = validFor
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphareferredType = try container.decodeIfPresent("@referredType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        href = try container.decodeIfPresent("href")
        id = try container.decodeIfPresent("id")
        name = try container.decodeIfPresent("name")
        relationshipType = try container.decodeIfPresent("relationshipType")
        role = try container.decodeIfPresent("role")
        validFor = try container.decodeIfPresent("validFor")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphareferredType, forKey: "@referredType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(relationshipType, forKey: "relationshipType")
        try container.encodeIfPresent(role, forKey: "role")
        try container.encodeIfPresent(validFor, forKey: "validFor")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductOfferingRelationship else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphareferredType == object.alphareferredType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.href == object.href else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.relationshipType == object.relationshipType else { return false }
      guard self.role == object.role else { return false }
      guard self.validFor == object.validFor else { return false }
      return true
    }

    public static func == (lhs: ProductOfferingRelationship, rhs: ProductOfferingRelationship) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
