//
//  TextFieldTableCell.swift
//  NeSwarm
//
//  Created by Admin on 31.10.2022.
//

import Foundation
import UIKit
import SnapKit

class TextFieldCell: UITableViewCell, TableCell {

    
    lazy var textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.textColor = .darkGray
        field.font = field.font?.withSize(TextFieldConsts.textFieldFontSize)
        return field
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CellIDs.textFieldId)
        
        self.setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setLayout() {
        contentView.addSubview(textField)
        selectionStyle = .none
        
        textField.snp.makeConstraints { (maker) in
            maker.left.equalToSuperview()
            maker.centerY.equalToSuperview()
            maker.width.equalToSuperview()
        }
        
    }
}

extension TextFieldCell: TableCellProtocol {
    func configure(type: CellType) {
        textField.placeholder = type.name
        
        switch type {
        case .login:
            textField.textContentType = .username
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.userImage.size.width, height: TextFieldConsts.userImage.size.height))
            leftImage.image = TextFieldConsts.userImage
            textField.leftView = leftImage
            textField.leftViewMode = .always
        case .email:
            textField.textContentType = .emailAddress
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.emailImage.size.width, height: TextFieldConsts.emailImage.size.height))
            leftImage.image = TextFieldConsts.emailImage
            textField.leftView = leftImage
            textField.leftViewMode = .always
        case .password:
            textField.textContentType = .password
            textField.isSecureTextEntry = true
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.passwordImage.size.width, height: TextFieldConsts.passwordImage.size.height))
            leftImage.image = TextFieldConsts.passwordImage
            textField.leftView = leftImage
            textField.leftViewMode = .always
        default: break;
        }
    }
}

enum TextFieldType {
    case email
    case login
    case password
    var name: String {
        switch self {
        case .email:
            return "Email"
        case .login:
            return "Имя пользователя"
        case .password:
            return "Пароль"
        }
    }
}

enum TextFieldConsts {
    static let textFieldFontSize: CGFloat = 20
    static let userImage: UIImage = UIImage(named: "username.png") ?? UIImage()
    static let passwordImage: UIImage = UIImage(named: "password.png") ?? UIImage()
    static let emailImage: UIImage = UIImage(named: "email.png") ?? UIImage()
}
