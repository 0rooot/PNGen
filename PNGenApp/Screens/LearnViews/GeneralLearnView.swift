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
                Text(LocalizedStringKey("LearnView.General.Title"))
                    .font(.largeTitle)
                    .padding(20)
                Text(LocalizedStringKey("LearnView.General.Body"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
                Text(LocalizedStringKey("LearnView.General.Instructions"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(20)
            }
            Spacer()
        }
        
    }
}
