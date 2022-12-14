//
//  AppDelegate.swift
//  NeSwarm
//
//  Created by Admin on 20.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        RootModuleFactory.makeModule(in: window)
        
        return true
    }

}

