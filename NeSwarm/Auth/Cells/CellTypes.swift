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
            return "Email"
        case .login:
            return "Имя пользователя"
        case .password:
            return "Пароль"
        case .labelAuth:
            return "Вход"
        case .switchButton:
            return "Вход"
        case .submitButton:
            return "Подтвердить"
        case .labelRegister:
            return "Регистрация"
        }
    }
}
