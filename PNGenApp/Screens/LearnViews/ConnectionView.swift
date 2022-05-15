//
//  ConnectionView.swift
//  PNGen
//
//  Created by Main Developer on 24.03.22.
//

import SwiftUI

struct ConnectionsLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .leading) {
                Text(LocalizedStringKey("LearnView.Connections.Title")).withLearnTextTitleStyle()
                Text(LocalizedStringKey("LearnView.Connections.Body")).withLearnTextBodyStyle()
                Text(LocalizedStringKey("LearnView.Connections.More")).withLearnTextBodyStyle()
            }
            Spacer()
        }
    }
}
