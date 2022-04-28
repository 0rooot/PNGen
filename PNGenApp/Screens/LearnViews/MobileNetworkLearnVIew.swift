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
                        .withLearnTextTitleStyle()
                    Text(LocalizedStringKey("LearnView.GSM.Body"))
                        .withLearnTextBodyStyle()
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                    Spacer()
                    Group{
                        Text(LocalizedStringKey("LearnView.GSM.Risk"))
                            .withLearnTextBodyStyle()
                        HStack{
                            Text("1").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp1"))
                                .withLearnTextBodyStyle()}
                        HStack{
                            Text("2").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp2"))
                                .withLearnTextBodyStyle()}
                        HStack{
                            Text("3").font(.title).padding(5)
                            Text(LocalizedStringKey("LearnView.GSM.Tipp3"))
                                .withLearnTextBodyStyle()}
                    }
                }
                Spacer()
            }
        }
    }
}

