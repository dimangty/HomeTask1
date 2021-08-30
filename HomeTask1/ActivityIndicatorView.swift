//
//  ActivityIndicatorView.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import Foundation
import SwiftUI
import UIKit

struct ActivityIndicatorView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}
