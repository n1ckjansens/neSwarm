//
//  SwitchButtonTableCell.swift
//  NeSwarm
//
//  Created by Admin on 31.10.2022.
//

import Foundation
import UIKit
import SnapKit

final class SwitchButtonCell: UITableViewCell, TableCell {
    
    lazy var switchButton: UIButton = {
        let sButton = UIButton()
        sButton.translatesAutoresizingMaskIntoConstraints = false
        return sButton
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: SwitchButtonConsts.cellID)
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
        contentView.addSubview(switchButton)
        selectionStyle = .none
        switchButton.setTitleColor(.black, for: .normal)
        switchButton.tintColor = .black
        switchButton.layer.borderWidth = SwitchButtonConsts.switchButtonBorderWidth
        switchButton.layer.cornerRadius = SwitchButtonConsts.switchButtonCornerRadius
        
        switchButton.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.centerY.equalToSuperview()
            maker.width.equalTo(SwitchButtonConsts.switchButtonWidth)
        }
    }
}

extension SwitchButtonCell: TableCellProtocol {
    func configure(type: CellType) {
        switch type {
        case .switchButton:
            switchButton.setTitle(type.name, for: .normal)
        default: break;
        }
    }
}

private enum SwitchButtonConsts {
    static let cellID = "switchButtonCell"
    static let switchButtonBorderWidth: CGFloat = 1
    static let switchButtonCornerRadius: CGFloat = 5
    static let switchButtonWidth: CGFloat = 120
}
