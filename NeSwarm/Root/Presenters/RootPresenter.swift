//
//  RootPresenter.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

class RootPresenter {
    
    // MARK: - Private Properties
    
    private let router:RootRouterProtocol
    
    // MARK: - Initializers
    
    init(router: RootRouterProtocol) {
        self.router = router
    }
    
    // MARK: - Public Methods
    
    func start() {
        router.presentScreen()
    }
    
}
