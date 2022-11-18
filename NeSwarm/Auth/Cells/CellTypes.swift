//
//  CellTypes.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import Foundation

enum CellType {
    case email
    case login
    case password
    
    case labelAuth
    case labelRegister
    
    case switchButton
    case submitButton
    
    var name: String {
        switch self {
            case .email:
                return CellTypeConsts.email
            
            case .login:
                return CellTypeConsts.login
            
            case .password:
                return CellTypeConsts.password
            
            case .labelAuth:
                return CellTypeConsts.labelAuth
            
            case .switchButton:
                return CellTypeConsts.switchButton
            
            case .submitButton:
                return CellTypeConsts.submitButton
            
            case .labelRegister:
                return CellTypeConsts.labelRegister
        }
    }
}

enum CellTypeConsts {
    
    static let email: String = "Email"
    static let login: String = "Имя Пользователя"
    static let password: String = "Пароль"
    
    static let labelAuth: String = "Вход"
    static let labelRegister: String = "Регистрация"
    
    static let switchButton: String = "Вход"
    static let submitButton: String = "Подтвердить"
    
}
