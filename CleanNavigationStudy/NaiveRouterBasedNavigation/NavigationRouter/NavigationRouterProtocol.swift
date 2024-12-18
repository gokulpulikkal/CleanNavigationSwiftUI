//
//  NavigationRouterProtocol.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import Foundation

protocol NavigationRouterProtocol {

    func navigateTo(value: NavigationDestinations)
    func navigateBack()
    func navigateToRoot()

}
