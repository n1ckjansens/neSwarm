//
//  AuthPresenter.swift
//  NeSwarm
//
//  Created by Admin on 20.10.2022.
//

import Foundation

class AuthPresenter: AuthPresenterProtocol {
    
    // MARK: - Private Properties
    
    weak var view: AuthViewProtocol?
    private let router: AuthRouterProtocol
    private let interactor: AuthInteractorProtocol
    
    // MARK: - Initializers
    
    init(
        interactor: AuthInteractorProtocol,
        router: AuthRouterProtocol
    ) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Public Methods
    
    func viewDidLoad() {

    }
    
}

extension AuthPresenter: AuthInteractorDelegateProtocol {
    
}
