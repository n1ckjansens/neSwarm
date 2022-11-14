//
//  RootRouter.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

class RootRouter: RootRouterProtocol {
    weak var window: UIWindow?
    
    func presentScreen() {
        window?.makeKeyAndVisible()
        let navContoller = UINavigationController(rootViewController: AuthModuleFactory.makeModule())
        navContoller.navigationBar.isHidden = true
        window?.rootViewController = navContoller
    }
}
