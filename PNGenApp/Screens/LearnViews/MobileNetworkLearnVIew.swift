//
//  MobileNetworkLearnVIew.swift
//  PNGen
//
//  Created by Main Developer on 25.03.22.
//

import SwiftUI

struct MobileNetworkLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.GSM.Title")).withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.GSM.Body")).withLearnTextBodyStyle()
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.GSM.Risk")).withLearnTextBodyStyle()
                        HStack(alignment: .top){
                            Text("1").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.GSM.Tipp1")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("2").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.GSM.Tipp2")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("3").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.GSM.Tipp3")).withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
    }
}

