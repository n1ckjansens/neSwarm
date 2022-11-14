//
//  AuthProtocols.swift
//  NeSwarm
//
//  Created by Admin on 12.11.2022.
//

import UIKit

protocol AuthViewProtocol: AnyObject {
    
}

protocol AuthPresenterProtocol: AnyObject {
    var view: AuthViewProtocol? { get set }
    
    func viewDidLoad()
}

protocol AuthInteractorProtocol: AnyObject {
    var delegate: AuthInteractorDelegateProtocol? { get set }
}

protocol AuthInteractorDelegateProtocol: AnyObject {
    
}

protocol AuthRouterProtocol: AnyObject {
    var viewController: UIViewController? { get set }
}

protocol TableCellProtocol {
    func configure(type: CellType)
}

protocol TableCell: UITableViewCell, TableCellProtocol {
    
}
