//
//  AirportModel.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Foundation

struct AirportResponse: Codable {
    let data: [AirportModel]
}
struct AirportModel: Codable {
    let code, lat, lon, name, city, country, woeid: String
    let state: String?
    let tz, phone, type, email: String
    let url, icao: String
    let runwayLength: String?
    let directFlights: String
    let carriers: String

    enum CodingKeys: String, CodingKey {
        case code, lat, lon, name, city, country, woeid, tz, phone, type, email, url
        case runwayLength = "runway_length"
        case icao
        case state
        case directFlights = "direct_flights"
        case carriers
    }
//}

//extension AirportModel: Equatable {
//    static func == (lhs: AirportModel, rhs: AirportModel) -> Bool {
//        return lhs.code == rhs.code
//    }
//}
//
//extension AirportModel: Hashable {
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(code)
//    }
}

typealias AirportsResponse = [AirportModel]
