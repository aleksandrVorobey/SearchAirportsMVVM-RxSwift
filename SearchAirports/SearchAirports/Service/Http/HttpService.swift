//
//  HttpService.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Alamofire

protocol HttpService {
    var sessionManager: Session { get set }
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
