//
//  RootPresenter.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

class RootPresenter {
    
    private let router:RootRouterProtocol
    
    init(router: RootRouterProtocol) {
        self.router = router
    }
    
    func start() {
        router.presentScreen()
    }
    
}
