// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//

import Foundation

internal protocol RUMDataModel: Codable { }

/// Schema of all properties of an Action event
///
/// Schema of common properties of RUM events
// MARK: - RUMAction
internal struct RUMAction: RUMDataModel {
    /// Internal properties
    let dd: RUMActionDD
    /// Application properties
    let application: RUMApplication
    /// Device connectivity properties
    let connectivity: RUMConnectivity?
    /// Start of the event in ms from epoch
    let date: Int64
    /// Session properties
    let session: RUMSession
    /// User properties
    let usr: RUMUSR?
    /// View properties
    let view: RUMActionView
    /// Action properties
    let action: RUMActionAction
    /// RUM event type
    let type = "action"

    enum CodingKeys: String, CodingKey {
        case dd = "_dd"
        case application = "application"
        case connectivity = "connectivity"
        case date = "date"
        case session = "session"
        case usr = "usr"
        case view = "view"
        case action = "action"
        case type = "type"
    }
}

/// Action properties
// MARK: - RUMActionAction
internal struct RUMActionAction: Codable {
    /// Properties of the crashes of the action
    let crash: RUMActionCrash?
    /// Properties of the errors of the action
    let error: RUMActionError?
    /// UUID of the action
    let id: String?
    /// Duration in ns to the action is considered loaded
    let loadingTime: Int64?
    /// Properties of the long tasks of the action
    let longTask: RUMActionLongTask?
    /// Properties of the resources of the action
    let resource: RUMActionResource?
    /// Action target properties
    let target: RUMTarget?
    /// Type of the action
    let type: RUMActionType

    enum CodingKeys: String, CodingKey {
        case crash = "crash"
        case error = "error"
        case id = "id"
        case loadingTime = "loading_time"
        case longTask = "long_task"
        case resource = "resource"
        case target = "target"
        case type = "type"
    }
}

/// Properties of the crashes of the action
// MARK: - RUMActionCrash
internal struct RUMActionCrash: Codable {
    /// Number of crashes that occurred on the action
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the errors of the action
// MARK: - RUMActionError
internal struct RUMActionError: Codable {
    /// Number of errors that occurred on the action
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the long tasks of the action
// MARK: - RUMActionLongTask
internal struct RUMActionLongTask: Codable {
    /// Number of long tasks that occurred on the action
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the resources of the action
// MARK: - RUMActionResource
internal struct RUMActionResource: Codable {
    /// Number of resources that occurred on the action
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Action target properties
// MARK: - RUMTarget
internal struct RUMTarget: Codable {
    /// Target name
    let name: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}

/// Type of the action
internal enum RUMActionType: String, Codable {
    case applicationStart = "application_start"
    case click = "click"
    case custom = "custom"
    case scroll = "scroll"
    case swipe = "swipe"
    case tap = "tap"
}

/// Application properties
// MARK: - RUMApplication
internal struct RUMApplication: Codable {
    /// UUID of the application
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }
}

/// Device connectivity properties
// MARK: - RUMConnectivity
internal struct RUMConnectivity: Codable {
    /// Cellular connectivity properties
    let cellular: RUMCellular?
    /// The list of available network interfaces
    let interfaces: [RUMInterface]
    /// Status of the device connectivity
    let status: RUMStatus

    enum CodingKeys: String, CodingKey {
        case cellular = "cellular"
        case interfaces = "interfaces"
        case status = "status"
    }
}

/// Cellular connectivity properties
// MARK: - RUMCellular
internal struct RUMCellular: Codable {
    /// The name of the SIM carrier
    let carrierName: String?
    /// The type of a radio technology used for cellular connection
    let technology: String?

    enum CodingKeys: String, CodingKey {
        case carrierName = "carrier_name"
        case technology = "technology"
    }
}

internal enum RUMInterface: String, Codable {
    case bluetooth = "bluetooth"
    case cellular = "cellular"
    case ethernet = "ethernet"
    case mixed = "mixed"
    case none = "none"
    case other = "other"
    case unknown = "unknown"
    case wifi = "wifi"
    case wimax = "wimax"
}

/// Status of the device connectivity
internal enum RUMStatus: String, Codable {
    case connected = "connected"
    case maybe = "maybe"
    case notConnected = "not_connected"
}

/// Internal properties
// MARK: - RUMActionDD
internal struct RUMActionDD: Codable {
    /// Version of the RUM event format
    let formatVersion = 2

    enum CodingKeys: String, CodingKey {
        case formatVersion = "format_version"
    }
}

/// Session properties
// MARK: - RUMSession
internal struct RUMSession: Codable {
    /// UUID of the session
    let id: String
    /// Type of the session
    let type: RUMSessionType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
    }
}

/// Type of the session
internal enum RUMSessionType: String, Codable {
    case synthetics = "synthetics"
    case user = "user"
}

/// User properties
// MARK: - RUMUSR
internal struct RUMUSR: Codable {
    /// Email of the user
    let email: String?
    /// Identifier of the user
    let id: String?
    /// Name of the user
    let name: String?

    enum CodingKeys: String, CodingKey {
        case email = "email"
        case id = "id"
        case name = "name"
    }
}

/// View properties
// MARK: - RUMActionView
internal struct RUMActionView: Codable {
    /// UUID of the view
    let id: String
    /// URL that linked to the initial view of the page
    let referrer: String?
    /// URL of the view
    let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case referrer = "referrer"
        case url = "url"
    }
}

/// Schema of all properties of an Error event
///
/// Schema of common properties of RUM events
// MARK: - RUMError
internal struct RUMError: RUMDataModel {
    /// Internal properties
    let dd: RUMActionDD
    /// Application properties
    let application: RUMApplication
    /// Device connectivity properties
    let connectivity: RUMConnectivity?
    /// Start of the event in ms from epoch
    let date: Int64
    /// Session properties
    let session: RUMSession
    /// User properties
    let usr: RUMUSR?
    /// View properties
    let view: RUMActionView
    /// Action properties
    let action: RUMErrorAction?
    /// Error properties
    let error: RUMErrorError
    /// RUM event type
    let type = "error"

    enum CodingKeys: String, CodingKey {
        case dd = "_dd"
        case application = "application"
        case connectivity = "connectivity"
        case date = "date"
        case session = "session"
        case usr = "usr"
        case view = "view"
        case action = "action"
        case error = "error"
        case type = "type"
    }
}

/// Action properties
// MARK: - RUMErrorAction
internal struct RUMErrorAction: Codable {
    /// UUID of the action
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }
}

/// Error properties
// MARK: - RUMErrorError
internal struct RUMErrorError: Codable {
    /// Whether this error crashed the host application
    let isCrash: Bool?
    /// Error message
    let message: String
    /// Resource properties of the error
    let resource: RUMErrorResource?
    /// Source of the error
    let source: RUMSource
    /// Stacktrace of the error
    let stack: String?

    enum CodingKeys: String, CodingKey {
        case isCrash = "is_crash"
        case message = "message"
        case resource = "resource"
        case source = "source"
        case stack = "stack"
    }
}

/// Resource properties of the error
// MARK: - RUMErrorResource
internal struct RUMErrorResource: Codable {
    /// HTTP method of the resource
    let method: RUMMethod
    /// HTTP Status code of the resource
    let statusCode: Int64
    /// URL of the resource
    let url: String

    enum CodingKeys: String, CodingKey {
        case method = "method"
        case statusCode = "status_code"
        case url = "url"
    }
}

/// HTTP method of the resource
internal enum RUMMethod: String, Codable {
    case delete = "DELETE"
    case head = "HEAD"
    case methodGET = "GET"
    case patch = "PATCH"
    case post = "POST"
    case put = "PUT"
}

/// Source of the error
internal enum RUMSource: String, Codable {
    case agent = "agent"
    case console = "console"
    case logger = "logger"
    case network = "network"
    case source = "source"
    case webview = "webview"
}

/// Schema of all properties of a Long Task event
///
/// Schema of common properties of RUM events
// MARK: - RUMLongTask
internal struct RUMLongTask: RUMDataModel {
    /// Internal properties
    let dd: RUMActionDD
    /// Application properties
    let application: RUMApplication
    /// Device connectivity properties
    let connectivity: RUMConnectivity?
    /// Start of the event in ms from epoch
    let date: Int64
    /// Session properties
    let session: RUMSession
    /// User properties
    let usr: RUMUSR?
    /// View properties
    let view: RUMActionView
    /// Action properties
    let action: RUMLongTaskAction?
    /// Long Task properties
    let longTask: RUMLongTaskLongTask
    /// RUM event type
    let type = "long_task"

    enum CodingKeys: String, CodingKey {
        case dd = "_dd"
        case application = "application"
        case connectivity = "connectivity"
        case date = "date"
        case session = "session"
        case usr = "usr"
        case view = "view"
        case action = "action"
        case longTask = "long_task"
        case type = "type"
    }
}

/// Action properties
// MARK: - RUMLongTaskAction
internal struct RUMLongTaskAction: Codable {
    /// UUID of the action
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }
}

/// Long Task properties
// MARK: - RUMLongTaskLongTask
internal struct RUMLongTaskLongTask: Codable {
    /// Duration in ns of the long task
    let duration: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
    }
}

/// Schema of all properties of a Resource event
///
/// Schema of common properties of RUM events
// MARK: - RUMResource
internal struct RUMResource: RUMDataModel {
    /// Internal properties
    let dd: RUMActionDD
    /// Application properties
    let application: RUMApplication
    /// Device connectivity properties
    let connectivity: RUMConnectivity?
    /// Start of the event in ms from epoch
    let date: Int64
    /// Session properties
    let session: RUMSession
    /// User properties
    let usr: RUMUSR?
    /// View properties
    let view: RUMActionView
    /// Action properties
    let action: RUMResourceAction?
    /// Resource properties
    let resource: RUMResourceResource
    /// RUM event type
    let type = "resource"

    enum CodingKeys: String, CodingKey {
        case dd = "_dd"
        case application = "application"
        case connectivity = "connectivity"
        case date = "date"
        case session = "session"
        case usr = "usr"
        case view = "view"
        case action = "action"
        case resource = "resource"
        case type = "type"
    }
}

/// Action properties
// MARK: - RUMResourceAction
internal struct RUMResourceAction: Codable {
    /// UUID of the action
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }
}

/// Resource properties
// MARK: - RUMResourceResource
internal struct RUMResourceResource: Codable {
    /// Connect phase properties
    let connect: RUMConnect?
    /// DNS phase properties
    let dns: RUMDNS?
    /// Download phase properties
    let download: RUMDownload?
    /// Duration of the resource
    let duration: Int64
    /// First Byte phase properties
    let firstByte: RUMFirstByte?
    /// HTTP method of the resource
    let method: RUMMethod?
    /// Redirect phase properties
    let redirect: RUMRedirect?
    /// Size in octet of the resource response body
    let size: Int64?
    /// SSL phase properties
    let ssl: RUMSSL?
    /// HTTP status code of the resource
    let statusCode: Int64?
    /// Resource type
    let type: RUMResourceType
    /// URL of the resource
    let url: String

    enum CodingKeys: String, CodingKey {
        case connect = "connect"
        case dns = "dns"
        case download = "download"
        case duration = "duration"
        case firstByte = "first_byte"
        case method = "method"
        case redirect = "redirect"
        case size = "size"
        case ssl = "ssl"
        case statusCode = "status_code"
        case type = "type"
        case url = "url"
    }
}

/// Connect phase properties
// MARK: - RUMConnect
internal struct RUMConnect: Codable {
    /// Duration in ns of the resource connect phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the connect phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// DNS phase properties
// MARK: - RUMDNS
internal struct RUMDNS: Codable {
    /// Duration in ns of the resource dns phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the dns phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// Download phase properties
// MARK: - RUMDownload
internal struct RUMDownload: Codable {
    /// Duration in ns of the resource download phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the download phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// First Byte phase properties
// MARK: - RUMFirstByte
internal struct RUMFirstByte: Codable {
    /// Duration in ns of the resource first byte phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the first byte phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// Redirect phase properties
// MARK: - RUMRedirect
internal struct RUMRedirect: Codable {
    /// Duration in ns of the resource redirect phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the redirect phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// SSL phase properties
// MARK: - RUMSSL
internal struct RUMSSL: Codable {
    /// Duration in ns of the resource ssl phase
    let duration: Int64
    /// Duration in ns between start of the request and start of the ssl phase
    let start: Int64

    enum CodingKeys: String, CodingKey {
        case duration = "duration"
        case start = "start"
    }
}

/// Resource type
internal enum RUMResourceType: String, Codable {
    case beacon = "beacon"
    case css = "css"
    case document = "document"
    case fetch = "fetch"
    case font = "font"
    case image = "image"
    case js = "js"
    case media = "media"
    case other = "other"
    case xhr = "xhr"
}

/// Schema of all properties of a View event
///
/// Schema of common properties of RUM events
// MARK: - RUMView
internal struct RUMView: RUMDataModel {
    /// Internal properties
    let dd: RUMViewDD
    /// Application properties
    let application: RUMApplication
    /// Device connectivity properties
    let connectivity: RUMConnectivity?
    /// Start of the event in ms from epoch
    let date: Int64
    /// Session properties
    let session: RUMSession
    /// User properties
    let usr: RUMUSR?
    /// View properties
    let view: RUMViewView
    /// RUM event type
    let type = "view"

    enum CodingKeys: String, CodingKey {
        case dd = "_dd"
        case application = "application"
        case connectivity = "connectivity"
        case date = "date"
        case session = "session"
        case usr = "usr"
        case view = "view"
        case type = "type"
    }
}

/// Internal properties
// MARK: - RUMViewDD
internal struct RUMViewDD: Codable {
    /// Version of the RUM event format
    let formatVersion = 2
    /// Version of the update of the view event
    let documentVersion: Int64

    enum CodingKeys: String, CodingKey {
        case formatVersion = "format_version"
        case documentVersion = "document_version"
    }
}

/// View properties
// MARK: - RUMViewView
internal struct RUMViewView: Codable {
    /// UUID of the view
    let id: String
    /// URL that linked to the initial view of the page
    let referrer: String?
    /// URL of the view
    let url: String
    /// Properties of the actions of the view
    let action: RUMViewAction
    /// Properties of the crashes of the view
    let crash: RUMViewCrash?
    /// Duration in ns to the complete parsing and loading of the document and its sub resources
    let domComplete: Int64?
    /// Duration in ns to the complete parsing and loading of the document without its sub
    /// resources
    let domContentLoaded: Int64?
    /// Duration in ns to the end of the parsing of the document
    let domInteractive: Int64?
    /// Properties of the errors of the view
    let error: RUMViewError
    /// Duration in ns to the first rendering
    let firstContentfulPaint: Int64?
    /// Duration in ns to the end of the load event handler execution
    let loadEvent: Int64?
    /// Duration in ns to the view is considered loaded
    let loadingTime: Int64?
    /// Type of the loading of the view
    let loadingType: RUMLoadingType?
    /// Properties of the long tasks of the view
    let longTask: RUMViewLongTask?
    /// Properties of the resources of the view
    let resource: RUMViewResource
    /// Time spent on the view in ns
    let timeSpent: Int64

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case referrer = "referrer"
        case url = "url"
        case action = "action"
        case crash = "crash"
        case domComplete = "dom_complete"
        case domContentLoaded = "dom_content_loaded"
        case domInteractive = "dom_interactive"
        case error = "error"
        case firstContentfulPaint = "first_contentful_paint"
        case loadEvent = "load_event"
        case loadingTime = "loading_time"
        case loadingType = "loading_type"
        case longTask = "long_task"
        case resource = "resource"
        case timeSpent = "time_spent"
    }
}

/// Properties of the actions of the view
// MARK: - RUMViewAction
internal struct RUMViewAction: Codable {
    /// Number of actions that occurred on the view
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the crashes of the view
// MARK: - RUMViewCrash
internal struct RUMViewCrash: Codable {
    /// Number of crashes that occurred on the view
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the errors of the view
// MARK: - RUMViewError
internal struct RUMViewError: Codable {
    /// Number of errors that occurred on the view
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Type of the loading of the view
internal enum RUMLoadingType: String, Codable {
    case activityDisplay = "activity_display"
    case activityRedisplay = "activity_redisplay"
    case fragmentDisplay = "fragment_display"
    case fragmentRedisplay = "fragment_redisplay"
    case initialLoad = "initial_load"
    case routeChange = "route_change"
}

/// Properties of the long tasks of the view
// MARK: - RUMViewLongTask
internal struct RUMViewLongTask: Codable {
    /// Number of long tasks that occurred on the view
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}

/// Properties of the resources of the view
// MARK: - RUMViewResource
internal struct RUMViewResource: Codable {
    /// Number of resources that occurred on the view
    let count: Int64

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }
}
