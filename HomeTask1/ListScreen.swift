//
//  ListScreen.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import SwiftUI

struct ListScreen: View {
    @ObservedObject var viewModel = NewsListViewModel()
    @EnvironmentObject var navigationViewModel: NavigationViewModel
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if viewModel.isLoading {
                    ActivityIndicatorView().scaleEffect(3)
                } else {
                    ForEach(0..<viewModel.news.count) { i in
                        NavigationLink(destination: NewsItemView(), tag: i, selection: $navigationViewModel.linkSelected) {
                            Text(viewModel.news[i].name)
                        }
                        
                    }
                }
                
            }.navigationTitle("News List")
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
