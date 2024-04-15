//
//  AppCoordinator.swift
//  SearchAirports
//
//  Created by Александр Воробей on 14.04.2024.
//

import Foundation
import UIKit

class AppCoordinator: BaseCordinator {
    
    private let window: UIWindow
    private let navigationController = {
        let navigationController = UINavigationController()
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        self.add(coordinator: searchCityCoordinator)
        searchCityCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
