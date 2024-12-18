//
//  FirstScreenForNaiveRouter.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct FirstScreenForNaiveRouter: View {

    @Environment(NavigationRouter.self) private var navigationRouter: NavigationRouter

    var body: some View {
        Button(action: {
            navigationRouter.navigateTo(value: NavigationDestinations.secondScreen)
        }, label: {
            Text("Hello, FirstScreenForNaiveRouter!\n Tap me to go to the Second Screen")
        })
    }
}

#Preview {
    FirstScreenForNaiveRouter()
        .environment(NavigationRouter())
}
