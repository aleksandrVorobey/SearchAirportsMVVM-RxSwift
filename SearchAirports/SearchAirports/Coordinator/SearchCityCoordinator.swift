//
//  SearchCityCoordinator.swift
//  SearchAirports
//
//  Created by Александр Воробей on 14.04.2024.
//

import Foundation
import UIKit

class SearchCityCoordinator: BaseCordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let view = SearchCityViewController.instantiate()
        let service = AirportsService.shared
        
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0, airportsService: service)
        }
        
        navigationController.pushViewController(view, animated: true)
    }
}
