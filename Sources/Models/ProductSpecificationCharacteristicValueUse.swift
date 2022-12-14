//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A use of the ProductSpecificationCharacteristicValue by a ProductOffering to which additional properties (attributes) apply or override the properties of similar properties contained in ProductSpecificationCharacteristicValue. It should be noted that characteristics which their value(s) addressed by this object must exist in corresponding product specification. The available characteristic values for a ProductSpecificationCharacteristic in a Product specification can be modified at the ProductOffering level. For example, a characteristic 'Color' might have values White, Blue, Green, and Red. But, the list of values can be restricted to e.g. White and Blue in an associated product offering. It should be noted that the list of values in 'ProductSpecificationCharacteristicValueUse' is a strict subset of the list of values as defined in the corresponding product specification characteristics. */
public class ProductSpecificationCharacteristicValueUse: APIModel {

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** A narrative that explains in detail what the productSpecificationCharacteristic is */
    public var description: String?

    /** Unique ID for the characteristic */
    public var id: String?

    /** The maximum number of instances a CharacteristicValue can take on. For example, zero to five phone numbers in a group calling plan, where five is the value for the maxCardinality. */
    public var maxCardinality: Int?

    /** The minimum number of instances a CharacteristicValue can take on. For example, zero to five phone numbers in a group calling plan, where zero is the value for the minCardinality. */
    public var minCardinality: Int?

    /** Name of the associated productSpecificationCharacteristic */
    public var name: String?

    /** A number or text that can be assigned to a ProductSpecificationCharacteristic. */
    public var productSpecCharacteristicValue: [CharacteristicValueSpecification]?

    public var productSpecification: ProductSpecificationRef?

    public var validFor: TimePeriod?

    /** A kind of value that the characteristic can take on, such as numeric, text and so forth */
    public var valueType: String?

    public init(alphabaseType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, description: String? = nil, id: String? = nil, maxCardinality: Int? = nil, minCardinality: Int? = nil, name: String? = nil, productSpecCharacteristicValue: [CharacteristicValueSpecification]? = nil, productSpecification: ProductSpecificationRef? = nil, validFor: TimePeriod? = nil, valueType: String? = nil) {
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.description = description
        self.id = id
        self.maxCardinality = maxCardinality
        self.minCardinality = minCardinality
        self.name = name
        self.productSpecCharacteristicValue = productSpecCharacteristicValue
        self.productSpecification = productSpecification
        self.validFor = validFor
        self.valueType = valueType
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        description = try container.decodeIfPresent("description")
        id = try container.decodeIfPresent("id")
        maxCardinality = try container.decodeIfPresent("maxCardinality")
        minCardinality = try container.decodeIfPresent("minCardinality")
        name = try container.decodeIfPresent("name")
        productSpecCharacteristicValue = try container.decodeArrayIfPresent("productSpecCharacteristicValue")
        productSpecification = try container.decodeIfPresent("productSpecification")
        validFor = try container.decodeIfPresent("validFor")
        valueType = try container.decodeIfPresent("valueType")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(maxCardinality, forKey: "maxCardinality")
        try container.encodeIfPresent(minCardinality, forKey: "minCardinality")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(productSpecCharacteristicValue, forKey: "productSpecCharacteristicValue")
        try container.encodeIfPresent(productSpecification, forKey: "productSpecification")
        try container.encodeIfPresent(validFor, forKey: "validFor")
        try container.encodeIfPresent(valueType, forKey: "valueType")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductSpecificationCharacteristicValueUse else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.maxCardinality == object.maxCardinality else { return false }
      guard self.minCardinality == object.minCardinality else { return false }
      guard self.name == object.name else { return false }
      guard self.productSpecCharacteristicValue == object.productSpecCharacteristicValue else { return false }
      guard self.productSpecification == object.productSpecification else { return false }
      guard self.validFor == object.validFor else { return false }
      guard self.valueType == object.valueType else { return false }
      return true
    }

    public static func == (lhs: ProductSpecificationCharacteristicValueUse, rhs: ProductSpecificationCharacteristicValueUse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
