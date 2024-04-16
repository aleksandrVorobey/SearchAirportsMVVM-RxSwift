//
//  AirportsService.swift
//  SearchAirports
//
//  Created by Александр Воробей on 15.04.2024.
//

import Alamofire
import RxSwift
import Foundation

class AirportsService {
    static let shared = AirportsService()
    private lazy var httpService = AirportHttpService()
}

extension AirportsService: AirportAPI {
    func fetchAirports() -> RxSwift.Single<[AirportModel]> {
        return Single.create { (single) -> Disposable in
            do {
                try AirportHttpRouter.getAirports
                    .request(usingHttpService: self.httpService)
                    .responseData { result in
                        guard let data = result.data else { return }
                        do {
                            let airports = try JSONDecoder().decode([AirportModel].self, from: data)
//                            print("Airports = \(String(describing: airports.first))")
                            single(.success(airports))
                        } catch {
                            
                        }
                    }
            } catch {
                
            }
            return Disposables.create()
        }
    }
    
}
