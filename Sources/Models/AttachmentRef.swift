//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Attachment reference. An attachment complements the description of an element (for instance a product) through video, pictures */
public class AttachmentRef: APIModel {

    /** Unique-Identifier for this attachment */
    public var id: String

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** The actual type of the target instance when needed for disambiguation. */
    public var alphareferredType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** A narrative text describing the content of the attachment */
    public var description: String?

    /** URL serving as reference for the attachment resource */
    public var href: URL?

    /** Name of the related entity. */
    public var name: String?

    /** Link to the attachment media/content */
    public var url: URL?

    public init(id: String, alphabaseType: String? = nil, alphareferredType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, description: String? = nil, href: URL? = nil, name: String? = nil, url: URL? = nil) {
        self.id = id
        self.alphabaseType = alphabaseType
        self.alphareferredType = alphareferredType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.description = description
        self.href = href
        self.name = name
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        alphabaseType = try container.decodeIfPresent("@baseType")
        alphareferredType = try container.decodeIfPresent("@referredType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        description = try container.decodeIfPresent("description")
        href = try container.decodeIfPresent("href")
        name = try container.decodeIfPresent("name")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphareferredType, forKey: "@referredType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AttachmentRef else { return false }
      guard self.id == object.id else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphareferredType == object.alphareferredType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.description == object.description else { return false }
      guard self.href == object.href else { return false }
      guard self.name == object.name else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: AttachmentRef, rhs: AttachmentRef) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
