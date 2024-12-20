//
//  NaiveNavigationWithRouterLaunchView.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

/// Not a great way to have the navigation. For small Apps this will work fine.
/// As the screen number increases the maintainability will become a problem
struct NaiveNavigationWithRouterLaunchView: View {
    @State var navigationRouter: NavigationRouter

    init(navigationRouter: NavigationRouter = NavigationRouter()) {
        self.navigationRouter = navigationRouter
    }

    var body: some View {
        NavigationStack(path: $navigationRouter.navigationPath, root: {
            RootView()
                .navigationDestination(for: NavigationDestinations.self, destination: { destination in
                    switch destination {
                    case .firstScreen:
                        FirstScreenForNaiveRouter()
                    case .secondScreen:
                        SecondScreenForNaiveRouter()
                    case .thirdScreen:
                        ThirdScreenForNaiveRouter()
                    }
                })
        })
        .environment(navigationRouter)
    }
}

#Preview {
    NaiveNavigationWithRouterLaunchView()
}
