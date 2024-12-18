//
//  NavigationRouter.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import Foundation
import Observation
import SwiftUI

@Observable
class NavigationRouter: NavigationRouterProtocol {

    var navigationPath: NavigationPath

    init(navigationPath: NavigationPath = NavigationPath()) {
        self.navigationPath = navigationPath
    }

    func navigateTo(value: NavigationDestinations) {
        navigationPath.append(value)
    }

    func navigateBack() {
        navigationPath.removeLast()
    }

    func navigateToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }

}
