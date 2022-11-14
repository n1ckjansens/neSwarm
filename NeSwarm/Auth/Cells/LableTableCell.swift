//
//  LableTableCell.swift
//  NeSwarm
//
//  Created by Admin on 31.10.2022.
//

import Foundation
import UIKit
import SnapKit

class LabelCell: UITableViewCell, TableCell {
    
    lazy var labelCell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = label.font.withSize(LabelConsts.labelFontSize)
        return label
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CellIDs.labelId)
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
        addSubview(labelCell)
        selectionStyle = .none
        
        labelCell.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.centerYWithinMargins.equalToSuperview()
        }
    }
}

extension LabelCell: TableCellProtocol {
    
    func configure(type: CellType) {
        switch type {
        case .labelAuth:
            labelCell.text = type.name
        case .labelRegister:
            labelCell.text = type.name
        default: break;
        }
    }
}

private enum LabelConsts {
    static let labelFontSize: CGFloat = 25
    static let labelAuthText: String = "Вход"
    static let labelRegText: String = "Регистрация"
}
