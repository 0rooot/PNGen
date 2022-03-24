//
//  InformationView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct InformationView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }) {
            VStack(alignment: .leading) {
                       Text("Title of this Text")
                           .font(.title)
                       Text("Here is my first article Lorem Ipsum whatever I want to write, i write it. ")
                           .font(.subheadline)
                   }
        }
    }
}
