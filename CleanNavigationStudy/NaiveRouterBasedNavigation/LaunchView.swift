//
//  LaunchView.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct LaunchView: View {
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
    LaunchView()
}
