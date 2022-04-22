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
                        .font(.largeTitle)
                        .padding(20)
                    Text(LocalizedStringKey("LearnView.Settings.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(20)
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.Settings.Risk"))
                            .font(.body)
                            .lineSpacing(10)
                            .padding(20)
                        HStack{
                            Text("1").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp1"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("2").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp2"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp3"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Settings.Tipp4"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                    }
                }
                Spacer()
            }
        }
    }
}
