//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A collection of Product Offerings, intended for a specific DistributionChannel, enhanced with additional information such as SLA parameters, invoicing and shipping details */
public class Catalog: APIModel {

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** Indicates if the catalog is a product, service or resource catalog */
    public var catalogType: String?

    /** List of root categories contained in this catalog */
    public var category: [CategoryRef]?

    /** Description of this catalog */
    public var description: String?

    /** Unique reference of the catalog */
    public var href: String?

    /** Unique identifier of the Catalog */
    public var id: String?

    /** Date and time of the last update */
    public var lastUpdate: DateTime?

    /** Used to indicate the current lifecycle status */
    public var lifecycleStatus: String?

    /** Name of the catalog */
    public var name: String?

    /** List of parties involved in this catalog */
    public var relatedParty: [RelatedParty]?

    public var validFor: TimePeriod?

    /** Catalog version */
    public var version: String?

    public init(alphabaseType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, catalogType: String? = nil, category: [CategoryRef]? = nil, description: String? = nil, href: String? = nil, id: String? = nil, lastUpdate: DateTime? = nil, lifecycleStatus: String? = nil, name: String? = nil, relatedParty: [RelatedParty]? = nil, validFor: TimePeriod? = nil, version: String? = nil) {
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.catalogType = catalogType
        self.category = category
        self.description = description
        self.href = href
        self.id = id
        self.lastUpdate = lastUpdate
        self.lifecycleStatus = lifecycleStatus
        self.name = name
        self.relatedParty = relatedParty
        self.validFor = validFor
        self.version = version
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        catalogType = try container.decodeIfPresent("catalogType")
        category = try container.decodeArrayIfPresent("category")
        description = try container.decodeIfPresent("description")
        href = try container.decodeIfPresent("href")
        id = try container.decodeIfPresent("id")
        lastUpdate = try container.decodeIfPresent("lastUpdate")
        lifecycleStatus = try container.decodeIfPresent("lifecycleStatus")
        name = try container.decodeIfPresent("name")
        relatedParty = try container.decodeArrayIfPresent("relatedParty")
        validFor = try container.decodeIfPresent("validFor")
        version = try container.decodeIfPresent("version")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(catalogType, forKey: "catalogType")
        try container.encodeIfPresent(category, forKey: "category")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(lastUpdate, forKey: "lastUpdate")
        try container.encodeIfPresent(lifecycleStatus, forKey: "lifecycleStatus")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(relatedParty, forKey: "relatedParty")
        try container.encodeIfPresent(validFor, forKey: "validFor")
        try container.encodeIfPresent(version, forKey: "version")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Catalog else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.catalogType == object.catalogType else { return false }
      guard self.category == object.category else { return false }
      guard self.description == object.description else { return false }
      guard self.href == object.href else { return false }
      guard self.id == object.id else { return false }
      guard self.lastUpdate == object.lastUpdate else { return false }
      guard self.lifecycleStatus == object.lifecycleStatus else { return false }
      guard self.name == object.name else { return false }
      guard self.relatedParty == object.relatedParty else { return false }
      guard self.validFor == object.validFor else { return false }
      guard self.version == object.version else { return false }
      return true
    }

    public static func == (lhs: Catalog, rhs: Catalog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
