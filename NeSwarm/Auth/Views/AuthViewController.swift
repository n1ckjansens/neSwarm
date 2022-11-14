//
//  AuthViewController.swift
//  NeSwarm
//
//  Created by Admin on 20.10.2022.
//

import UIKit
import SnapKit

final class AuthView: UIViewController {
    
    // MARK: - Private Properties
    
    private let presenter: AuthPresenterProtocol
    
    private var dataSourse: [CellType] = [.labelAuth, .login, .password, .email, .submitButton, .switchButton]
    
    // MARK: - Public Properties
    
    lazy var tableView = UITableView()

    static let cellIDs: [String] = [CellIDs.labelId, CellIDs.textFieldId, CellIDs.textFieldId, CellIDs.textFieldId, CellIDs.submitButtonId, CellIDs.switchButtonId]
    
    // MARK: - Initializers
    
    init(presenter: AuthPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.viewDidLoad()
        
    }
    
    func setupUI() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(LabelCell.self, forCellReuseIdentifier: CellIDs.labelId)
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: CellIDs.textFieldId)
        tableView.register(SubmitButtonCell.self, forCellReuseIdentifier: CellIDs.submitButtonId)
        tableView.register(SwitchButtonCell.self, forCellReuseIdentifier: CellIDs.switchButtonId)

        view.addSubview(tableView)
        tableView.separatorStyle = .none
        tableView.rowHeight = AuthViewConsts.tableViewRowHeight
        
        tableView.snp.makeConstraints { (maker) in
            maker.edges.equalToSuperview()
        }
    }
    
}

extension AuthView: AuthViewProtocol {
    
}

extension AuthView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: AuthView.cellIDs[indexPath.row], for: indexPath) as! TableCell
        cell.configure(type: dataSourse[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourse.count
    }
}

enum AuthViewConsts {
    static let tableViewRowHeight: CGFloat = 65
}
