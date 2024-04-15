//
//  BaseCordinator.swift
//  SearchAirports
//
//  Created by Александр Воробей on 14.04.2024.
//

import Foundation

class BaseCordinator: Coordinator {
    var childCoordinators: [any Coordinator] = []
    
    func start() {
        fatalError("Children should implement start")
    }
    
    
}
