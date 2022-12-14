//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Is based on both the basic cost to develop and produce products and the enterprises policy on revenue targets. This price may be further revised through discounting (a Product Offering Price that reflects an alteration). The price, applied for a productOffering may also be influenced by the productOfferingTerm, the customer selected, eg: a productOffering can be offered with multiple terms, like commitment periods for the contract. The price may be influenced by this productOfferingTerm. A productOffering may be cheaper with a 24 month commitment than with a 12 month commitment. */
public class ProductOfferingPrice: APIModel {

    /** the immediate base class type of this product offering price */
    public var alphabaseType: String?

    /** hyperlink reference to the schema describing this resource */
    public var alphaschemaLocation: String?

    /** The class type of this Product offering price */
    public var alphatype: String?

    /** this object represents a bundle relationship from a bundle product offering price (parent) to a simple product offering price (child). A simple product offering price may participate in more than one bundle relationship. */
    public var bundledPopRelationship: [BundledProductOfferingPriceRelationship]?

    /** The Constraint resource represents a policy/rule applied to ProductOfferingPrice. */
    public var constraint: [ConstraintRef]?

    /** Description of the productOfferingPrice */
    public var description: String?

    /** Reference of the ProductOfferingPrice */
    public var href: String?

    /** unique id of this resource */
    public var id: String?

    /** A flag indicating if this ProductOfferingPrice is composite (bundle) or not */
    public var isBundle: Bool?

    /** the last update time of this ProductOfferingPrice */
    public var lastUpdate: DateTime?

    /** the lifecycle status of this ProductOfferingPrice */
    public var lifecycleStatus: String?

    /** Name of the productOfferingPrice */
    public var name: String?

    /** Percentage to apply if this Product Offering Price is an Alteration (such as a Discount) */
    public var percentage: Float?

    /** Place defines the places where the products are sold or delivered. */
    public var place: [PlaceRef]?

    /** Product Offering Prices related to this Product Offering Price, for example a price alteration such as allowance or discount */
    public var popRelationship: [ProductOfferingPriceRelationship]?

    public var price: Money?

    /** A category that describes the price, such as recurring, discount, allowance, penalty, and so forth. */
    public var priceType: String?

    /** The PricingLogicAlgorithm entity represents an instantiation of an interface specification to external rating function (without a modeled behavior in SID). Some of the parameters of the interface definition may be already set (such as price per unit) and some may be gathered during the rating process from the event (such as call duration) or from ProductCharacteristicValues (such as assigned bandwidth). */
    public var pricingLogicAlgorithm: [PricingLogicAlgorithm]?

    /** A use of the ProductSpecificationCharacteristicValue by a ProductOfferingPrice to which additional properties (attributes) apply or override the properties of similar properties contained in ProductSpecificationCharacteristicValue. It should be noted that characteristics which their value(s) addressed by this object must exist in corresponding product specification. The available characteristic values for a ProductSpecificationCharacteristic in a Product specification can be modified at the ProductOffering and ProcuctOfferingPrice level. The list of values in ProductSpecificationCharacteristicValueUse is a strict subset of the list of values as defined in the corresponding product specification characteristics. */
    public var prodSpecCharValueUse: [ProductSpecificationCharacteristicValueUse]?

    /** A list of conditions under which a ProductOfferingPrice is made available to Customers. For instance, a Product Offering Price can be offered with multiple commitment periods. */
    public var productOfferingTerm: [ProductOfferingTerm]?

    /** the period of the recurring charge:  1, 2, ... .It sets to zero if it is not applicable */
    public var recurringChargePeriodLength: Int?

    /** The period to repeat the application of the price
Could be month, week... */
    public var recurringChargePeriodType: String?

    /** An amount of money levied on the price of a Product by a legislative body. */
    public var tax: [TaxItem]?

    public var unitOfMeasure: Quantity?

    public var validFor: TimePeriod?

    /** ProductOfferingPrice version */
    public var version: String?

    public init(alphabaseType: String? = nil, alphaschemaLocation: String? = nil, alphatype: String? = nil, bundledPopRelationship: [BundledProductOfferingPriceRelationship]? = nil, constraint: [ConstraintRef]? = nil, description: String? = nil, href: String? = nil, id: String? = nil, isBundle: Bool? = nil, lastUpdate: DateTime? = nil, lifecycleStatus: String? = nil, name: String? = nil, percentage: Float? = nil, place: [PlaceRef]? = nil, popRelationship: [ProductOfferingPriceRelationship]? = nil, price: Money? = nil, priceType: String? = nil, pricingLogicAlgorithm: [PricingLogicAlgorithm]? = nil, prodSpecCharValueUse: [ProductSpecificationCharacteristicValueUse]? = nil, productOfferingTerm: [ProductOfferingTerm]? = nil, recurringChargePeriodLength: Int? = nil, recurringChargePeriodType: String? = nil, tax: [TaxItem]? = nil, unitOfMeasure: Quantity? = nil, validFor: TimePeriod? = nil, version: String? = nil) {
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.bundledPopRelationship = bundledPopRelationship
        self.constraint = constraint
        self.description = description
        self.href = href
        self.id = id
        self.isBundle = isBundle
        self.lastUpdate = lastUpdate
        self.lifecycleStatus = lifecycleStatus
        self.name = name
        self.percentage = percentage
        self.place = place
        self.popRelationship = popRelationship
        self.price = price
        self.priceType = priceType
        self.pricingLogicAlgorithm = pricingLogicAlgorithm
        self.prodSpecCharValueUse = prodSpecCharValueUse
        self.productOfferingTerm = productOfferingTerm
        self.recurringChargePeriodLength = recurringChargePeriodLength
        self.recurringChargePeriodType = recurringChargePeriodType
        self.tax = tax
        self.unitOfMeasure = unitOfMeasure
        self.validFor = validFor
        self.version = version
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        bundledPopRelationship = try container.decodeArrayIfPresent("bundledPopRelationship")
        constraint = try container.decodeArrayIfPresent("constraint")
        description = try container.decodeIfPresent("description")
        href = try container.decodeIfPresent("href")
        id = try container.decodeIfPresent("id")
        isBundle = try container.decodeIfPresent("isBundle")
        lastUpdate = try container.decodeIfPresent("lastUpdate")
        lifecycleStatus = try container.decodeIfPresent("lifecycleStatus")
        name = try container.decodeIfPresent("name")
        percentage = try container.decodeIfPresent("percentage")
        place = try container.decodeArrayIfPresent("place")
        popRelationship = try container.decodeArrayIfPresent("popRelationship")
        price = try container.decodeIfPresent("price")
        priceType = try container.decodeIfPresent("priceType")
        pricingLogicAlgorithm = try container.decodeArrayIfPresent("pricingLogicAlgorithm")
        prodSpecCharValueUse = try container.decodeArrayIfPresent("prodSpecCharValueUse")
        productOfferingTerm = try container.decodeArrayIfPresent("productOfferingTerm")
        recurringChargePeriodLength = try container.decodeIfPresent("recurringChargePeriodLength")
        recurringChargePeriodType = try container.decodeIfPresent("recurringChargePeriodType")
        tax = try container.decodeArrayIfPresent("tax")
        unitOfMeasure = try container.decodeIfPresent("unitOfMeasure")
        validFor = try container.decodeIfPresent("validFor")
        version = try container.decodeIfPresent("version")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(bundledPopRelationship, forKey: "bundledPopRelationship")
        try container.encodeIfPresent(constraint, forKey: "constraint")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(isBundle, forKey: "isBundle")
        try container.encodeIfPresent(lastUpdate, forKey: "lastUpdate")
        try container.encodeIfPresent(lifecycleStatus, forKey: "lifecycleStatus")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(percentage, forKey: "percentage")
        try container.encodeIfPresent(place, forKey: "place")
        try container.encodeIfPresent(popRelationship, forKey: "popRelationship")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(priceType, forKey: "priceType")
        try container.encodeIfPresent(pricingLogicAlgorithm, forKey: "pricingLogicAlgorithm")
        try container.encodeIfPresent(prodSpecCharValueUse, forKey: "prodSpecCharValueUse")
        try container.encodeIfPresent(productOfferingTerm, forKey: "productOfferingTerm")
        try container.encodeIfPresent(recurringChargePeriodLength, forKey: "recurringChargePeriodLength")
        try container.encodeIfPresent(recurringChargePeriodType, forKey: "recurringChargePeriodType")
        try container.encodeIfPresent(tax, forKey: "tax")
        try container.encodeIfPresent(unitOfMeasure, forKey: "unitOfMeasure")
        try container.encodeIfPresent(validFor, forKey: "validFor")
        try container.encodeIfPresent(version, forKey: "version")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductOfferingPrice else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.bundledPopRelationship == object.bundledPopRelationship else { return false }
      guard self.constraint == object.constraint else { return false }
      guard self.description == object.description else { return false }
      guard self.href == object.href else { return false }
      guard self.id == object.id else { return false }
      guard self.isBundle == object.isBundle else { return false }
      guard self.lastUpdate == object.lastUpdate else { return false }
      guard self.lifecycleStatus == object.lifecycleStatus else { return false }
      guard self.name == object.name else { return false }
      guard self.percentage == object.percentage else { return false }
      guard self.place == object.place else { return false }
      guard self.popRelationship == object.popRelationship else { return false }
      guard self.price == object.price else { return false }
      guard self.priceType == object.priceType else { return false }
      guard self.pricingLogicAlgorithm == object.pricingLogicAlgorithm else { return false }
      guard self.prodSpecCharValueUse == object.prodSpecCharValueUse else { return false }
      guard self.productOfferingTerm == object.productOfferingTerm else { return false }
      guard self.recurringChargePeriodLength == object.recurringChargePeriodLength else { return false }
      guard self.recurringChargePeriodType == object.recurringChargePeriodType else { return false }
      guard self.tax == object.tax else { return false }
      guard self.unitOfMeasure == object.unitOfMeasure else { return false }
      guard self.validFor == object.validFor else { return false }
      guard self.version == object.version else { return false }
      return true
    }

    public static func == (lhs: ProductOfferingPrice, rhs: ProductOfferingPrice) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
