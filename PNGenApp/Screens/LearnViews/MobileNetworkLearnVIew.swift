//
//  MobileNetworkLearnVIew.swift
//  PNGen
//
//  Created by Thomas Arnold on 25.03.22.
//

import SwiftUI

struct MobileNetworkLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            ScrollView{
                Spacer()
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.GSM.Title"))
                        .font(.largeTitle)
                        .padding(20)
                    Text(LocalizedStringKey("LearnView.GSM.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(20)
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.GSM.Risk"))
                            .font(.body)
                            .lineSpacing(10)
                            .padding(20)
                        HStack{
                            Text("1").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp1"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("2").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp2"))
                                .font(.body)
                                .lineSpacing(10)
                                .padding(20)}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp3"))
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

