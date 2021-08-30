//
//  DashboardScreen.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import SwiftUI

struct DashboardScreen: View {
    @EnvironmentObject var navigationViewModel: NavigationViewModel
    var body: some View {
        Button("Navigate", action: {
            navigationViewModel.tabSelected = 1
            navigationViewModel.linkSelected = 2
        })
        
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
