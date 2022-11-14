//
//  AuthPresenter.swift
//  NeSwarm
//
//  Created by Admin on 20.10.2022.
//

import Foundation

class AuthPresenter: AuthPresenterProtocol {
    weak var view: AuthViewProtocol?
    private let router: AuthRouterProtocol
    private let interactor: AuthInteractorProtocol
    
    init(
        interactor: AuthInteractorProtocol,
        router: AuthRouterProtocol
    ) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {

    }
    
}

extension AuthPresenter: AuthInteractorDelegateProtocol {
    
}
