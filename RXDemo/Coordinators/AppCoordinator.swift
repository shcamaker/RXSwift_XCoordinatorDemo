//
//  AppCoordinator.swift
//  RXDemo
//
//  Created by Alex.Shen on 1/7/20.
//  Copyright © 2020 沈海超. All rights reserved.
//

import UIKit
import XCoordinator


enum AppRoute: Route {
    case login
    

}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    init() {
        super.init(initialRoute: .login)
    }
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
           switch route {
           case .login:
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let viewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
//               let viewModel = LoginViewModelImpl(router: unownedRouter)
//               viewController.bind(to: viewModel)
               return .push(viewController)
            
        }
    }
            
}
