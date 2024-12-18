//
//  RootView.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import Foundation
import SwiftUI

struct RootView: View {

    @Environment(NavigationRouter.self) private var navigationRouter
    
    var body: some View {
        Button(action: {
            navigationRouter.navigateTo(value: .firstScreen)
        }, label: {
            Text("Hi I'm root view \n Tap me to go to First screen")
        })
    }
}

#Preview {
    RootView()
        .environment(NavigationRouter())
}
