//
//  NavigationSelector.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

/// This view is handling the selection of navigations
/// For now keeping it simple without any navigations stack bcz it was messing with the nested ones
struct NavigationSelector: View {

    @State private var selectedNavigation: NavigationsSupported?
    let navigationsAvailable: [NavigationsSupported] = NavigationsSupported.allCases

    var body: some View {
        ZStack {
            List {
                ForEach(navigationsAvailable, id: \.self) { navigationCase in
                    Button(action: {
                        selectedNavigation = navigationCase
                    }, label: {
                        Text(navigationCase.title)
                    })
                }
            }
            if let selectedNavigation {
                navigationView(for: selectedNavigation)
            }
        }
    }

    @ViewBuilder
    private func navigationView(for navigationCase: NavigationsSupported) -> some View {
        switch navigationCase {
        case .NaiveRouterNavigation:
            NaiveNavigationWithRouterLaunchView()
        case .simpleNavigationStack:
            SimpleNavigationPathBased()
        }
    }
}

#Preview {
    NavigationSelector()
}
