//
//  InformationView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct GeneralLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .leading) {
                Text("Purpose of the Learn Center")
                    .font(.title)
                Text("This section is all about learning. Here you can read about general cyber security topics regarding mobile phones. Nowadays it gets more and more important to keep secure at work as well as on private devices." )
                    .font(.subheadline)
            }.border(Color.green, width: 3)
            Spacer()
        }.border(Color.red, width: 3)
        
    }
}
