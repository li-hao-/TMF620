//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The notification data structure */
public class ProductSpecificationCreateEvent: APIModel {

    /** The correlation id for this event. */
    public var correlationId: String?

    /** An explnatory of the event. */
    public var description: String?

    /** The domain of the event. */
    public var domain: String?

    public var event: ProductSpecificationCreateEventPayload?

    /** The identifier of the notification. */
    public var eventId: String?

    /** Time of the event occurrence. */
    public var eventTime: DateTime?

    /** The type of the notification. */
    public var eventType: String?

    /** A priority. */
    public var priority: String?

    /** The time the event occured. */
    public var timeOcurred: DateTime?

    /** The title of the event. */
    public var title: String?

    public init(correlationId: String? = nil, description: String? = nil, domain: String? = nil, event: ProductSpecificationCreateEventPayload? = nil, eventId: String? = nil, eventTime: DateTime? = nil, eventType: String? = nil, priority: String? = nil, timeOcurred: DateTime? = nil, title: String? = nil) {
        self.correlationId = correlationId
        self.description = description
        self.domain = domain
        self.event = event
        self.eventId = eventId
        self.eventTime = eventTime
        self.eventType = eventType
        self.priority = priority
        self.timeOcurred = timeOcurred
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        correlationId = try container.decodeIfPresent("correlationId")
        description = try container.decodeIfPresent("description")
        domain = try container.decodeIfPresent("domain")
        event = try container.decodeIfPresent("event")
        eventId = try container.decodeIfPresent("eventId")
        eventTime = try container.decodeIfPresent("eventTime")
        eventType = try container.decodeIfPresent("eventType")
        priority = try container.decodeIfPresent("priority")
        timeOcurred = try container.decodeIfPresent("timeOcurred")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(correlationId, forKey: "correlationId")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(domain, forKey: "domain")
        try container.encodeIfPresent(event, forKey: "event")
        try container.encodeIfPresent(eventId, forKey: "eventId")
        try container.encodeIfPresent(eventTime, forKey: "eventTime")
        try container.encodeIfPresent(eventType, forKey: "eventType")
        try container.encodeIfPresent(priority, forKey: "priority")
        try container.encodeIfPresent(timeOcurred, forKey: "timeOcurred")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProductSpecificationCreateEvent else { return false }
      guard self.correlationId == object.correlationId else { return false }
      guard self.description == object.description else { return false }
      guard self.domain == object.domain else { return false }
      guard self.event == object.event else { return false }
      guard self.eventId == object.eventId else { return false }
      guard self.eventTime == object.eventTime else { return false }
      guard self.eventType == object.eventType else { return false }
      guard self.priority == object.priority else { return false }
      guard self.timeOcurred == object.timeOcurred else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: ProductSpecificationCreateEvent, rhs: ProductSpecificationCreateEvent) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
