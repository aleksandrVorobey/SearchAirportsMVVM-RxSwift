//
//  SerchCityViewModel.swift
//  SearchAirports
//
//  Created by Александр Воробей on 14.04.2024.
//

import Foundation
import RxCocoa
import RxSwift

protocol SearchCityViewPresentable {
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
}

class SearchCityViewModel: SearchCityViewPresentable {
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    private var airportService: AirportAPI
    
    private let bag = DisposeBag()
    
    init(input: SearchCityViewPresentable.Input, airportsService: AirportAPI) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
        self.airportService = airportsService
        self.process()
    }
}

private extension SearchCityViewModel {
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output{
        return ()
    }
    
    func process() {
        self.airportService
            .fetchAirports()
            .subscribe()
            .disposed(by: bag)
    }
}
