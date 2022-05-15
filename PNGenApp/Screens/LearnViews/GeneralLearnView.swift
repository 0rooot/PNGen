//
//  InformationView.swift
//  PNGen
//
//  Created by Main Developer on 24.03.22.
//

import SwiftUI

struct GeneralLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.General.Title")).withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.Settings.Body")).withLearnTextBodyStyle()
                    Spacer()
                    Group{
                        HStack(alignment: .top){
                            Text("1").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Settings.Tipp1")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("2").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Settings.Tipp2")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("3").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Settings.Tipp3")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("4").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Settings.Tipp4")).withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
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
