//
//  AirportAPI.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Foundation
import RxSwift

protocol AirportAPI {
    func fetchAirports() -> Single<[AirportModel]>
}
