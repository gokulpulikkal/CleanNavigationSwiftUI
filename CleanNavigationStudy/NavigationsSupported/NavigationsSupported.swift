//
//  NavigationsSupported.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import Foundation

enum NavigationsSupported: CaseIterable, Hashable {
    case simpleNavigationStack
    case NaiveRouterNavigation
}

extension NavigationsSupported {
    var title: String {
        switch self {
        case .simpleNavigationStack:
            "Simple Navigation Stack"
        case .NaiveRouterNavigation:
            "Naive Router Navigation"
        }
    }
}
