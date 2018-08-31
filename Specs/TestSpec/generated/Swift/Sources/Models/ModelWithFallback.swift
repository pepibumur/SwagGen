//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** definition with default value */
public class ModelWithFallback: APIModel {

    public var requiredProperty: String

    public var optionalProperty: String?

    public init(requiredProperty: String, optionalProperty: String? = nil) {
        self.requiredProperty = requiredProperty
        self.optionalProperty = optionalProperty
    }

    private enum CodingKeys: String, CodingKey {
        case requiredProperty
        case optionalProperty
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        requiredProperty = try container.decodeIfPresent(.requiredProperty) ?? "stephen"
        optionalProperty = try container.decodeIfPresent(.optionalProperty) ?? "john"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(requiredProperty, forKey: .requiredProperty)
        try container.encodeIfPresent(optionalProperty, forKey: .optionalProperty)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ModelWithFallback else { return false }
      guard self.requiredProperty == object.requiredProperty else { return false }
      guard self.optionalProperty == object.optionalProperty else { return false }
      return true
    }

    public static func == (lhs: ModelWithFallback, rhs: ModelWithFallback) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}