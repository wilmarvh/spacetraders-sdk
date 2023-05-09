//
// GetSystems200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetSystems200Response: Codable, JSONEncodable, Hashable {

    public var data: [AnyCodable]
    public var meta: AnyCodable

    public init(data: [AnyCodable], meta: AnyCodable) {
        self.data = data
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(meta, forKey: .meta)
    }
}

