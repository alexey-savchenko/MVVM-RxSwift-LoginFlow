//
//  AppDelegate.swift
//  MVVM-RxSwift-LoginFlow
//
//  Created by Alexey Savchenko on 6/19/18.
//  Copyright © 2018 Alexey Savchenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let loginService = LoginService()
        let loginControllerViewModel = LoginControllerViewModel(loginService)
        let loginController = LoginController.create(with: loginControllerViewModel)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = loginController
        window?.makeKeyAndVisible()
        
        return true
    }
}
