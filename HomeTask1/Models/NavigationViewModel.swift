//
//  NavigationViewModel.swift
//  HomeTask1
//
//  Created by DBykov on 29.08.2021.
//

import Foundation
class NavigationViewModel: ObservableObject {
    @Published var tabSelected: Int = 0
    @Published var linkSelected: Int?
}
