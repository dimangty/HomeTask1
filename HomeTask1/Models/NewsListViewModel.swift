//
//  NewsListViewModel.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import Foundation
struct NewsItem: Identifiable {
    var id: UUID = UUID()
    let name: String
}

final class NewsListViewModel: ObservableObject {
    @Published private(set) var news = [NewsItem]()
    
    @Published private(set) var isLoading = false
    
    init() {
        loadFromServer()
    }
    
    func loadFromServer() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.news = [NewsItem(name: "News item1"),
                         NewsItem(name: "News item2"),
                         NewsItem(name: "News item3"),
                         NewsItem(name: "News item4")]
            self.isLoading = false
        }
    }
}
