//
//  SetupView.swift
//  PNGen
//
//  Created by Thomas Arnold on 01.05.22.
//

import SwiftUI

struct SetupView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Spacer()
                Group{
                    Spacer()
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.FurtherInfos.Title")).withTitleStyle()
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Body")).withQuestionBodyStyle()
                        Divider().background(Color.accentColor).frame(maxWidth: 200)
                    }
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Body")).withQuestionBodyStyle()
                        Divider().background(Color.accentColor).frame(maxWidth: 200)
                    }
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Body")).withQuestionBodyStyle()
                        
                        HStack{
                            Link(destination: URL(string: "https://produkte.migros.ch/bormioli-rocco-einmachglas-fido-703723200000")!, label: {
                                Text("Migros").withInfoButtonTextStyle()})
                            Link(destination: URL(string: "https://www.galaxus.ch/de/s2/product/bormioli-rocco-fido-1-stk-3-l-einmachglas-3510678")!, label: {
                                Text("Galaxus").withInfoButtonTextStyle()})
                            Link(destination: URL(string: "https://www.manor.ch/de/p/p0-33862006")!, label: {
                                Text("Manor").withInfoButtonTextStyle()})
                        }
                    }
                }
                Spacer()
            }
            .padding(20)
        }
    }
}
