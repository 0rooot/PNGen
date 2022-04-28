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
                    Text(LocalizedStringKey("LearnView.Settings.Title"))
                        .withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.Settings.Body"))
                        .withLearnTextBodyStyle()
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        HStack{
                            Text("1").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp1"))
                                .withLearnTextBodyStyle()}
                        HStack{
                            Text("2").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp2"))
                                .withLearnTextBodyStyle()}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp3"))
                                .withLearnTextBodyStyle()}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp4"))
                                .withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
    }
}
