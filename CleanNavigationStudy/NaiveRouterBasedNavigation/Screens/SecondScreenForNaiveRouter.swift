//
//  SecondScreenForNaiveRouter.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct SecondScreenForNaiveRouter: View {
    
    @Environment(NavigationRouter.self) private var navigationRouter
    
    var body: some View {
        Button(action: {
            navigationRouter.navigateTo(value: .thirdScreen)
        }, label: {
            Text("Hello, SecondScreenForNaiveRouter!\n Tap me to go to the Third screen")
        })
        
    }
}

#Preview {
    SecondScreenForNaiveRouter()
        .environment(NavigationRouter())
}
