//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TMF620.NotificationListeners {

    /**
    Client listener for entity CategoryDeleteEvent

    Example of a client listener for receiving the notification CategoryDeleteEvent
    */
    public enum ListenToCategoryDeleteEvent {

        public static let service = APIService<Response>(id: "listenToCategoryDeleteEvent", tag: "notification listeners (client side)", method: "POST", path: "/listener/categoryDeleteEvent", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: ListenToCategoryDeleteEvent.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = EventSubscription

            /** Notified */
            case status201(EventSubscription)

            /** Bad Request */
            case status400(ErrorType)

            /** Unauthorized */
            case status401(ErrorType)

            /** Forbidden */
            case status403(ErrorType)

            /** Not Found */
            case status404(ErrorType)

            /** Method Not allowed */
            case status405(ErrorType)

            /** Conflict */
            case status409(ErrorType)

            /** Internal Server Error */
            case status500(ErrorType)

            public var success: EventSubscription? {
                switch self {
                case .status201(let response): return response
                default: return nil
                }
            }

            public var failure: ErrorType? {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                case .status405(let response): return response
                case .status409(let response): return response
                case .status500(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<EventSubscription, ErrorType> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status201(let response): return response
                case .status400(let response): return response
                case .status401(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                case .status405(let response): return response
                case .status409(let response): return response
                case .status500(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .status400: return 400
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                case .status405: return 405
                case .status409: return 409
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .status400: return false
                case .status401: return false
                case .status403: return false
                case .status404: return false
                case .status405: return false
                case .status409: return false
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(EventSubscription.self, from: data))
                case 400: self = try .status400(decoder.decode(ErrorType.self, from: data))
                case 401: self = try .status401(decoder.decode(ErrorType.self, from: data))
                case 403: self = try .status403(decoder.decode(ErrorType.self, from: data))
                case 404: self = try .status404(decoder.decode(ErrorType.self, from: data))
                case 405: self = try .status405(decoder.decode(ErrorType.self, from: data))
                case 409: self = try .status409(decoder.decode(ErrorType.self, from: data))
                case 500: self = try .status500(decoder.decode(ErrorType.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
