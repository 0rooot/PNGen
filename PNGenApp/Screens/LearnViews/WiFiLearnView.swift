//
//  WiFiLearnView.swift
//  PNGen
//
//  Created by Thomas Arnold on 25.03.22.
//

import SwiftUI

struct WiFiLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.Wifi.Title")).withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.Wifi.Body")).withLearnTextBodyStyle()
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Title"))
                            .font(.title)
                            .padding(20)
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Intro")).withLearnTextBodyStyle()
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Risk")).withLearnTextBodyStyle()
                        HStack(alignment: .top){
                            Text("1").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp1")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("2").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp2")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("3").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp3")).withLearnTextBodyStyle()}
                        HStack(alignment: .top){
                            Text("4").withRuleNumberingStyle()
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp4")).withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
        
    }
}

