//
//  AppDelegate.swift
//  RXDemo
//
//  Created by 沈海超 on 2020/1/6.
//  Copyright © 2020 沈海超. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private lazy var mainWindow = UIWindow()
    private let router = AppCoordinator().strongRouter

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configureUI()
        router.setRoot(for: mainWindow)
        return true
    }

    private func configureUI() {
        UIView.appearance().overrideUserInterfaceStyle = .light
    }
    


}

