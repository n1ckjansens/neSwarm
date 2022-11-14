//
//  AuthModuleFactory.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

class AuthModuleFactory {
    
    static func makeModule() -> UIViewController {
        
        let router = AuthRouter()
        let interactor = AuthInteractor()
        let presenter = AuthPresenter(interactor: interactor, router: router)
        let viewController = AuthView(presenter: presenter)
        
        router.viewController = viewController
        presenter.view = viewController
        interactor.delegate = presenter
        
        return viewController
    }
}
