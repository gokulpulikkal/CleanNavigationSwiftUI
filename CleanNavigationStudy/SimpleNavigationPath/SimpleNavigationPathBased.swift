//
//  SimpleNavigationPathBased.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct SimpleNavigationPathBased: View {

    let screens: [String] = ["First", "second", "Third"]
    @State var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            ForEach(screens, id: \.self) { screen in
                Button(screen, action: {
                    navigationPath.append(screen)
                })
            }
            .navigationDestination(for: String.self, destination: { screen in
                if screen == screens[0] {
                    FirstScreen(navigationPath: $navigationPath)
                } else if screen == screens[1] {
                    SecondScreen()
                } else {
                    ThirdScreen()
                }
            })
        }
    }
}

#Preview {
    SimpleNavigationPathBased()
}
