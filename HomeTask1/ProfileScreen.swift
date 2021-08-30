//
//  ProfileScreen.swift
//  HomeTask1
//
//  Created by DBykov on 28.08.2021.
//

import SwiftUI

struct ProfileScreen: View {
    @State var isModal: Bool = false
    
    var body: some View {
        Button("Present") {
            self.isModal.toggle()
        }
        .sheet(isPresented: $isModal) {
            Text("First modal view")
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
