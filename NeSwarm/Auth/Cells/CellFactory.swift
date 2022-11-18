//
//  CellFactory.swift
//  NeSwarm
//
//  Created by Admin on 18.11.2022.
//

import Foundation

class CellFactory {
    
    static let cellFactoryValue = CellFactory()
    
    func makeCell(type: CellType) -> TableCell {
        switch type {
        case .email, .login, .password:
            let textFieldCell = TextFieldCell()
            textFieldCell.configure(type: type.self)
            return textFieldCell
            
        case .labelAuth, .labelRegister:
            let labelCell = LabelCell()
            labelCell.configure(type: type.self)
            return labelCell
            
        case .switchButton:
            let buttonCell = SwitchButtonCell()
            buttonCell.configure(type: type.self)
            return buttonCell
        case .submitButton:
            let buttonCell = SubmitButtonCell()
            buttonCell.configure(type: type.self)
            return buttonCell
        }
    }
}
