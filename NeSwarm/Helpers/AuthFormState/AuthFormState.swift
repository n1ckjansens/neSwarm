//
//  AuthFormState.swift
//  NeSwarm
//
//  Created by Nikita Pogorelov on 20.11.2022.
//

import Foundation

class AuthFormState {
    var login: String? = nil;
    var password: String? = nil;
    var email: String? = nil;

    // MARK: - Public Properties
    public func getState() -> AuthFormState {
        return self;
    }
    
    public func setLogin(_ login: String?) {
        print(login)
        self.login = login;
    }
    
    public func setPassword(_ password: String?) {
        self.password = password;
    }
    
    public func setEmail(_ email: String?) {
        self.email = email;
    }
}
