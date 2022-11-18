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

    // MARK: - Public Properties
    
    lazy var textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.textColor = .darkGray
        field.font = field.font?.withSize(TextFieldConsts.textFieldFontSize)
        return field
    }()

    // MARK: - Initializers
    
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
    
    // MARK: - Public Methods
    
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
            let outerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.userImageWidth+TextFieldConsts.imagePadding, height: TextFieldConsts.userImageHeight))
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.userImageWidth, height: TextFieldConsts.userImageHeight))
            leftImage.image = TextFieldConsts.userImage
            outerView.addSubview(leftImage)
            textField.leftView = outerView
            textField.leftViewMode = .always
            
        case .email:
            textField.textContentType = .emailAddress
            let outerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.emailImageWidth+TextFieldConsts.imagePadding, height: TextFieldConsts.emailImageHeight))
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.emailImageWidth, height: TextFieldConsts.emailImageHeight))
            leftImage.image = TextFieldConsts.emailImage
            outerView.addSubview(leftImage)
            textField.leftView = outerView
            textField.leftViewMode = .always
            
        case .password:
            textField.textContentType = .password
            textField.isSecureTextEntry = true
            let outerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.passwordImageWidth+TextFieldConsts.imagePadding, height: TextFieldConsts.passwordImageHeight))
            let leftImage = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: TextFieldConsts.passwordImageWidth, height: TextFieldConsts.passwordImageHeight))
            leftImage.image = TextFieldConsts.passwordImage
            outerView.addSubview(leftImage)
            textField.leftView = outerView
            textField.leftViewMode = .always
            
        default: break;
        }
    }
}

enum TextFieldConsts {
    static let textFieldFontSize: CGFloat = 20
    static let userImage: UIImage = UIImage(named: "username.png") ?? UIImage()
    static let passwordImage: UIImage = UIImage(named: "password.png") ?? UIImage()
    static let emailImage: UIImage = UIImage(named: "email.png") ?? UIImage()
    
    static let userImageWidth: CGFloat = userImage.size.width
    static let userImageHeight: CGFloat = userImage.size.height
    static let passwordImageWidth: CGFloat = passwordImage.size.width
    static let passwordImageHeight: CGFloat = passwordImage.size.height
    static let emailImageWidth: CGFloat = emailImage.size.width
    static let emailImageHeight: CGFloat = emailImage.size.height
    
    static let imagePadding = 15.0
}
