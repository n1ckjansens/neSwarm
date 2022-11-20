//
//  SubmitButtonTableCell.swift
//  NeSwarm
//
//  Created by Admin on 31.10.2022.
//

import Foundation
import UIKit
import SnapKit

final class SubmitButtonCell: UITableViewCell, TableCell {
    
    // MARK: - Public Properties
    
    lazy var submitButton: UIButton = {
        let subButton = UIButton()
        subButton.translatesAutoresizingMaskIntoConstraints = false
        return subButton
    }()
    
    // MARK: - Initializers
    @objc func btnAction() {
        self.onClick(sender:self.submitButton)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CellIDs.submitButtonId)
        self.setLayout()
        submitButton.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    // MARK: - Public Methods
    

    func setLayout() {
        contentView.addSubview(submitButton)
        selectionStyle = .none
    
        submitButton.snp.makeConstraints{ (maker) in
             maker.centerX.equalToSuperview()
             maker.centerY.equalToSuperview()
         }
    }
}

extension SubmitButtonCell: TableCellProtocol {
    func configure(type: CellType) {
        switch type {
        case .submitButton:
            submitButton.setImage(SubmitButtonConsts.submitImage, for: .normal)
        default: break;
        }
    }

    func onClick(sender: UIButton!) {
        print("Button is Clicked")
    }
}

private enum SubmitButtonConsts {
    static let submitImage: UIImage = UIImage(named: "submit.png") ?? UIImage()
}
