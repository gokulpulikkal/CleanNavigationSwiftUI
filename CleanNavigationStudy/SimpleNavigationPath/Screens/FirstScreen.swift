//
//  FirstScreen.swift
//  CleanNavigationStudy
//
//  Created by Gokul P on 12/18/24.
//

import SwiftUI

struct FirstScreen: View {
    @Binding var navigationPath: NavigationPath
    var body: some View {
        
        Button(action: {
            self.navigationPath.removeLast()
        }, label: {
            Text("Hello, FirstScreen!")
        })
    }
}

#Preview {
    FirstScreen(navigationPath: .constant(NavigationPath()))
}
