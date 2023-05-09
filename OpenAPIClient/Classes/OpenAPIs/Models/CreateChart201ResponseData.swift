//
// CreateChart201ResponseData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateChart201ResponseData: Codable, JSONEncodable, Hashable {

    public var chart: AnyCodable
    public var waypoint: AnyCodable

    public init(chart: AnyCodable, waypoint: AnyCodable) {
        self.chart = chart
        self.waypoint = waypoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chart
        case waypoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chart, forKey: .chart)
        try container.encode(waypoint, forKey: .waypoint)
    }
}

