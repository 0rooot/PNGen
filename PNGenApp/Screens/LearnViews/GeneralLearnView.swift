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
                Text(LocalizedStringKey("LearnView.General.Title")).withLearnTextTitleStyle()
                Text(LocalizedStringKey("LearnView.General.Body")).withLearnTextBodyStyle()
                Text(LocalizedStringKey("LearnView.General.Instructions")).withLearnTextBodyStyle()
            }
            Spacer()
        }
        
    }
}

extension Text {
    func withLearnTextBodyStyle() -> some View {
        self.font(.body)
            .lineSpacing(10)
            .padding([.leading, .bottom, .trailing], 20)
    }
    
    func withRuleNumberingStyle() -> some View {
        self.font(.title)
            .frame(width: 20)
            .padding(5)
    }
    
    func withLearnTextTitleStyle() -> some View {
        self.font(.largeTitle)
            .padding(20)
    }
}
