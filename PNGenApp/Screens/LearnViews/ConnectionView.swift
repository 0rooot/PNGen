//
//  ConnectionView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct ConnectionsLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .leading) {
                Text(LocalizedStringKey("LearnView.Connections.Title"))
                    .font(.largeTitle)
                    .padding(20)
                Text(LocalizedStringKey("LearnView.Connections.Body"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
                Text(LocalizedStringKey("LearnView.Connections.More"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
            }
            Spacer()
        }
    }
}
