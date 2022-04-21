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
                    Text(LocalizedStringKey("LearnView.Wifi.Title"))
                        .font(.largeTitle)
                        .padding(20)
                    Text(LocalizedStringKey("LearnView.Wifi.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(20)
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Title"))
                            .font(.title)
                            .padding(20)
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Intro"))
                            .font(.body)
                            .lineSpacing(10)
                            .padding(20)
                        Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Risk"))
                            .font(.body)
                            .lineSpacing(10)
                            .padding(20)
                        HStack{
                            Text("1").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp1"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("2").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp2"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp3"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("4").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.Wifi.PublicWiFi.Tipp4"))
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

