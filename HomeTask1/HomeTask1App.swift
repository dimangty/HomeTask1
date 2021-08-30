//
//  HomeTask1App.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import SwiftUI

@main
struct HomeTask1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(NavigationViewModel())
        }
    }
}
