//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A period of time, either as a deadline (endDateTime only) a startDateTime only, or both */
public class TimePeriod: APIModel {

    /** End of the time period, using IETC-RFC-3339 format */
    public var endDateTime: DateTime?

    /** Start of the time period, using IETC-RFC-3339 format */
    public var startDateTime: DateTime?

    public init(endDateTime: DateTime? = nil, startDateTime: DateTime? = nil) {
        self.endDateTime = endDateTime
        self.startDateTime = startDateTime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        endDateTime = try container.decodeIfPresent("endDateTime")
        startDateTime = try container.decodeIfPresent("startDateTime")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(endDateTime, forKey: "endDateTime")
        try container.encodeIfPresent(startDateTime, forKey: "startDateTime")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TimePeriod else { return false }
      guard self.endDateTime == object.endDateTime else { return false }
      guard self.startDateTime == object.startDateTime else { return false }
      return true
    }

    public static func == (lhs: TimePeriod, rhs: TimePeriod) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
