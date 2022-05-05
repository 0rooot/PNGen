//
//  SettingsView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct SettingsLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.Settings.Title")).withLearnTextTitleStyle()
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
