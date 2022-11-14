//
//  RootModuleFactory.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

class RootModuleFactory {
    static func makeModule (in window: UIWindow?) {
        let router = RootRouter()
        router.window = window
        let presenter = RootPresenter(router: router)
        presenter.start()
    }
}
