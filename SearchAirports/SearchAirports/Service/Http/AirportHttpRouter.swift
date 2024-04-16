//
//  AirportHttpRouter.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Alamofire
import Foundation

enum AirportHttpRouter {
    case getAirports
}

extension AirportHttpRouter: HttpRouter {
    var baseUrlString: String {
        "https://gist.githubusercontent.com/tdreyno/4278655/raw/7b0762c09b519f40397e4c3e100b097d861f5588"
    }
    
    var path: String {
        switch self {
        case .getAirports:
            "airports.json"
        }
    }
    
    var method: Alamofire.HTTPMethod {
        switch self {
        case .getAirports:
            return .get
        }
    }  
    
    
}
