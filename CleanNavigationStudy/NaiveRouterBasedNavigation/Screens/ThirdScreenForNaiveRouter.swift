//
//  ThirdScreenForNaiveRouter.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct ThirdScreenForNaiveRouter: View {
    @Environment(NavigationRouter.self) private var navigationRouter
    var body: some View {
        Button(action: {
            navigationRouter.navigateToRoot()
        }, label: {
            Text("Hello, ThirdScreenForNaiveRouter! \n Tap me to go to the Root")
        })
    }
}

#Preview {
    ThirdScreenForNaiveRouter()
        .environment(NavigationRouter())
}
