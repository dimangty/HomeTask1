//
//  ContentView.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @ObservedObject var navigationViewModel: NavigationViewModel = .init()
    
    var body: some View {
        TabView(selection: $navigationViewModel.tabSelected) {
            DashboardScreen().environmentObject(navigationViewModel).tabItem {
                Text("Home")
                Image(systemName: "star")
            }.tag(0)
            ListScreen().environmentObject(navigationViewModel).tabItem {
                Text("List")
                Image(systemName: "star")
            }.tag(1)
            ProfileScreen().tabItem {
                Text("Profile")
                Image(systemName: "star")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
