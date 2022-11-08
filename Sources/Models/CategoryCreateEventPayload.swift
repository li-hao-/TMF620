//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The event data structure */
public class CategoryCreateEventPayload: APIModel {

    public var category: Category?

    public init(category: Category? = nil) {
        self.category = category
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        category = try container.decodeIfPresent("category")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(category, forKey: "category")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CategoryCreateEventPayload else { return false }
      guard self.category == object.category else { return false }
      return true
    }

    public static func == (lhs: CategoryCreateEventPayload, rhs: CategoryCreateEventPayload) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}