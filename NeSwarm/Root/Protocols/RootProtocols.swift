//
//  RootContract.swift
//  NeSwarm
//
//  Created by Admin on 13.11.2022.
//

import UIKit

protocol RootRouterProtocol: AnyObject {
    var window: UIWindow? { get set }
    func presentScreen()
}
