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
                Text("Be Aware!")
                    .font(.largeTitle)
                    .padding(20)
                Text("This section is all about learning and gathering awareness. Here you can read about general cyber security topics regarding mobile phones. Nowadays it gets more and more important to keep secure at work as well as on private devices." )
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
                Text("Open the menue on the top left and use your device more secure. Keep Secure!" )
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
            }.border(Color.green, width: 3)
            Spacer()
        }.border(Color.red, width: 3)
        
    }
}
