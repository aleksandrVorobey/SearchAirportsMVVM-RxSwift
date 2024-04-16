//
//  AirportHttpService.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Alamofire

class AirportHttpService: HttpService {
    var sessionManager: Alamofire.Session = .default
    
    func request(_ urlRequest: any Alamofire.URLRequestConvertible) -> Alamofire.DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200..<400)
    }
}
