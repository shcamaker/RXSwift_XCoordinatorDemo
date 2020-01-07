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
    case home(StrongRouter<HomeRoute>?)
    case newsDetail(News)

}

class AppCoordinator: NavigationCoordinator<AppRoute> {

}
