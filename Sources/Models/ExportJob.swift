//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a task used to export resources to a file */
public class ExportJob: APIModel {

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** Data at which the job was completed */
    public var completionDate: DateTime?

    /** The format of the exported data */
    public var contentType: String?

    /** Date at which the job was created */
    public var creationDate: DateTime?

    /** Reason for failure */
    public var errorLog: String?

    /** Reference of the export job */
    public var href: URL?

    /** Identifier of the export job */
    public var id: String?

    /** URL of the root resource acting as the source for streaming content to the file specified by the export job */
    public var path: String?

    /** Used to scope the exported data */
    public var query: String?

    public var status: JobStateType?

    /** URL of the file containing the data to be exported */
    public var url: URL?

    public init(alphabaseType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, completionDate: DateTime? = nil, contentType: String? = nil, creationDate: DateTime? = nil, errorLog: String? = nil, href: URL? = nil, id: String? = nil, path: String? = nil, query: String? = nil, status: JobStateType? = nil, url: URL? = nil) {
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.completionDate = completionDate
        self.contentType = contentType
        self.creationDate = creationDate
        self.errorLog = errorLog
        self.href = href
        self.id = id
        self.path = path
        self.query = query
        self.status = status
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        completionDate = try container.decodeIfPresent("completionDate")
        contentType = try container.decodeIfPresent("contentType")
        creationDate = try container.decodeIfPresent("creationDate")
        errorLog = try container.decodeIfPresent("errorLog")
        href = try container.decodeIfPresent("href")
        id = try container.decodeIfPresent("id")
        path = try container.decodeIfPresent("path")
        query = try container.decodeIfPresent("query")
        status = try container.decodeIfPresent("status")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(completionDate, forKey: "completionDate")
        try container.encodeIfPresent(contentType, forKey: "contentType")
        try container.encodeIfPresent(creationDate, forKey: "creationDate")
        try container.encodeIfPresent(errorLog, forKey: "errorLog")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(path, forKey: "path")
        try container.encodeIfPresent(query, forKey: "query")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ExportJob else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.completionDate == object.completionDate else { return false }
      guard self.contentType == object.contentType else { return false }
      guard self.creationDate == object.creationDate else { return false }
      guard self.errorLog == object.errorLog else { return false }
      guard self.href == object.href else { return false }
      guard self.id == object.id else { return false }
      guard self.path == object.path else { return false }
      guard self.query == object.query else { return false }
      guard self.status == object.status else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: ExportJob, rhs: ExportJob) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
